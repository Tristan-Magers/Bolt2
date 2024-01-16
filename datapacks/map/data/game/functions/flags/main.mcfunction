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

execute if entity @s[tag=!flag] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute if entity @s[tag=flag] run data merge entity @s[tag=blueflag] {ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}]}
execute if entity @s[tag=flag] run data merge entity @s[tag=redflag] {ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}]}

execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored,scores={respawn=1..}] run title @a times 2 16 2
execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored,scores={respawn=1..}] run title @a title {"text":"Red Flag Returned","color":"gray","font":"fancy"}

execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored,scores={respawn=1..}] run title @a times 2 16 2
execute unless score .cutscene_running .data matches 1 as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored,scores={respawn=1..}] run title @a title {"text":"Blue Flag Returned","color":"gray","font":"fancy"}

tag @s[tag=flag] add flag2
tag @s[tag=!flag] remove flag2

tag @s[tag=flag2] remove scored

#
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 0.23 0

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add .TIME .data 6
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a subtitle {"text":"+5 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a title {"text":"Red Flag Taken!","color":"red","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add @p[team=blue,distance=..10,dx=1,dy=1.5,dz=1] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=blue,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 0.23 0

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add .TIME .data 6
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a subtitle {"text":"+5 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a title {"text":"Blue Flag Taken!","color":"dark_aqua","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .tmi .data = .0 .num run give @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Red Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a title {"text":"RED SCORES!","color":"red","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run clear @a[team=red] blue_banner
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=red] remove hasflag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .tmi .data = .0 .num run give @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Blue Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a title {"text":"BLUE SCORES!","color":"aqua","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run clear @a[team=blue] red_banner
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=blue] remove hasflag

execute if score Blue Scores >= .endscore .stats run scoreboard players set .stats_end .data 1
execute if score Red Scores >= .endscore .stats run scoreboard players set .stats_end .data 1

execute if score .tmi .data = .1 .num run scoreboard players set .stats_end .data 0

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