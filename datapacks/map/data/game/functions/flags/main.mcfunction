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

execute as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored] run title @a times 2 16 2
execute as @s[tag=flag,tag=!flag2,tag=redflag,tag=!scored] run title @a title {"text":"Red Flag Returned","color":"gray"}

execute as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored] run title @a times 2 16 2
execute as @s[tag=flag,tag=!flag2,tag=blueflag,tag=!scored] run title @a title {"text":"Blue Flag Returned","color":"gray"}

tag @s[tag=flag] add flag2
tag @s[tag=!flag] remove flag2

tag @s[tag=flag2] remove scored

#
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a title {"text":"Red Flag Taken!","color":"red"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=blue,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a title {"text":"Blue Flag Taken!","color":"dark_aqua"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run give @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] totem_of_undying{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Red Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a title {"text":"RED SCORES!","color":"red"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=red] remove hasflag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run give @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] totem_of_undying{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Blue Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a title {"text":"BLUE SCORES!","color":"aqua"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=blue] remove hasflag

execute if score Blue Scores >= .endscore .stats run function game:end
execute if score Red Scores >= .endscore .stats run function game:end

bossbar set minecraft:status visible false

execute if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status name {"text":"Red Flag Taken!!!","color":"red"}
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status name {"text":"Blue Flag Taken!!!","color":"aqua"}
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status name {"text":"Both Flags Taken!!!","color":"light_purple"}

execute if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status color red
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status color blue
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status color purple

execute if entity @a[team=blue,tag=hasflag] run bossbar set minecraft:status visible true
execute if entity @a[gamemode=adventure,team=red,tag=hasflag] run bossbar set minecraft:status visible true