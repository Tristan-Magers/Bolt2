execute at @s at @s run tp @s ~ ~ ~ ~3 0
effect give @s glowing 10 10 true

team join red @s[tag=redflag]
team join blue @s[tag=blueflag]

execute as @s[tag=!flag,tag=redflag] unless entity @a[team=blue,tag=hasflag] run title @a times 2 16 2
execute as @s[tag=!flag,tag=redflag] unless entity @a[team=blue,tag=hasflag] run title @a title {"text":"Red Flag Returned","color":"gray"}

execute as @s[tag=!flag,tag=blueflag] unless entity @a[team=red,tag=hasflag] run title @a times 2 16 2
execute as @s[tag=!flag,tag=blueflag] unless entity @a[team=red,tag=hasflag] run title @a title {"text":"Blue Flag Returned","color":"gray"}

execute if entity @a[team=red,tag=hasflag] run data merge entity @s[tag=blueflag] {ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute unless entity @a[team=red,tag=hasflag] run data merge entity @s[tag=blueflag] {ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}]}

execute if entity @a[team=blue,tag=hasflag] run data merge entity @s[tag=redflag] {ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute unless entity @a[team=blue,tag=hasflag] run data merge entity @s[tag=redflag] {ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}]}

execute if entity @a[team=red,tag=hasflag] run tag @s[tag=blueflag] remove flag
execute unless entity @a[team=red,tag=hasflag] run tag @s[tag=blueflag] add flag

execute if entity @a[team=blue,tag=hasflag] run tag @s[tag=redflag] remove flag
execute unless entity @a[team=blue,tag=hasflag] run tag @s[tag=redflag] add flag

execute at @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..1.5] run title @a times 2 16 8
execute at @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..1.5] run title @a title {"text":"Red Flag Taken!","color":"red"}
execute at @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..1.5] run tag @p[team=blue,distance=..1.5] add hasflag
execute at @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..1.5] run tag @s remove flag

execute at @s[tag=blueflag,tag=flag] if entity @a[team=red,distance=..1.5] run title @a times 2 16 8
execute at @s[tag=blueflag,tag=flag] if entity @a[team=red,distance=..1.5] run title @a title {"text":"Blue Flag Taken!","color":"dark_aqua"}
execute at @s[tag=blueflag,tag=flag] if entity @a[team=red,distance=..1.5] run tag @p[team=red,distance=..1.5] add hasflag
execute at @s[tag=blueflag,tag=flag] if entity @a[team=red,distance=..1.5] run tag @s remove flag

execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run execute as @a[team=red,distance=..1.5,tag=hasflag] at @s run function game:player/killspawn
execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run tag @e[tag=blueflag] add flag
execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run scoreboard players add Red Scores 1
execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run title @a times 5 15 10
execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run title @a title {"text":"RED SCORES!","color":"gold"}
execute at @s[tag=redflag] if entity @a[team=red,distance=..1.5,tag=hasflag] run tag @a[team=red] remove hasflag

execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run execute as @a[team=blue,distance=..1.5,tag=hasflag] at @s run function game:player/killspawn
execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run tag @e[tag=redflag] add flag
execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run scoreboard players add Blue Scores 1
execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run title @a times 5 15 10
execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run title @a title {"text":"BLUE SCORES!","color":"gold"}
execute at @s[tag=blueflag] if entity @a[team=blue,distance=..1.5,tag=hasflag] run tag @a[team=blue] remove hasflag

execute if score Blue Scores >= .endscore .stats run function game:end
execute if score Red Scores >= .endscore .stats run function game:end