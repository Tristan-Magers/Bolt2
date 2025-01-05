#
execute at @s run tp @s ~ ~ ~ ~3 0
effect give @s glowing 10 10 true

team join red @s[tag=redflag]
team join blue @s[tag=blueflag]

#
tag @s add flag

execute if entity @e[team=blue,tag=flag,tag=drop] run tag @s[tag=blueflag] remove flag
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run tag @s[tag=blueflag] remove flag

execute if entity @e[team=red,tag=flag,tag=drop] run tag @s[tag=redflag] remove flag
execute if entity @a[team=blue,tag=hasflag] run tag @s[tag=redflag] remove flag

execute if entity @s[tag=!flag] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:air",count:1}]}
execute if entity @s[tag=flag] run data merge entity @s[tag=blueflag] {ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}]}
execute if entity @s[tag=flag] run data merge entity @s[tag=redflag] {ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}]}

execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored,scores={respawn=1..}] run title @a[tag=!lobby] times 2 16 2
execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored,scores={respawn=1..}] run title @a[tag=!lobby] title {"text":"Red Flag Returned","color":"gray","font":"fancy"}

execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored,scores={respawn=1..}] run title @a[tag=!lobby] times 2 16 2
execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored,scores={respawn=1..}] run title @a[tag=!lobby] title {"text":"Blue Flag Returned","color":"gray","font":"fancy"}

tag @s[tag=flag] add flag2
tag @s[tag=!flag] remove flag2

tag @s[tag=flag2] remove scored

#
execute as @s at @s if score .tmi .data matches 0 run function game:flags/flag_ctf
execute as @s at @s if score .tmi .data matches 1 if score .tmi_objective .data matches 0 run function game:flags/flag_ctf
execute as @s at @s if score .tmi .data matches 1 if score .tmi_objective .data matches 1 run function game:flags/flag_capture

#
execute if score Blue Scores > Red Scores run scoreboard players set .stats_end .data 1
execute if score Red Scores > Blue Scores run scoreboard players set .stats_end .data 1

execute if score .tmi .data = .1 .num run scoreboard players set .stats_end .data 0
execute if score .ranked .data = .0 .num run scoreboard players set .stats_end .data 0

execute if score Blue Scores >= .endscore .stats run function game:game/end_ctf
execute if score Red Scores >= .endscore .stats run function game:game/end_ctf

scoreboard players operation .point_blue .metric = Blue Scores
scoreboard players operation .point_red .metric = Red Scores

bossbar set minecraft:status visible false

execute if entity @a[gamemode=adventure,team=blue,tag=hasflag] run bossbar set minecraft:status name {"text":"Red Flag Taken!!!","color":"red","font":"fancy"}
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status name {"text":"Blue Flag Taken!!!","color":"aqua","font":"fancy"}
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status name {"text":"Both Flags Taken!!!","color":"light_purple","font":"fancy"}

#execute if entity @a[gamemode=adventure,team=blue,tag=hasflag] run bossbar set minecraft:status color red
#execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status color blue
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status color purple

execute if entity @a[gamemode=adventure,team=blue,tag=hasflag] run bossbar set minecraft:status visible true
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status visible true