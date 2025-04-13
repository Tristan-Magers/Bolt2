execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 0.4 2
execute as @a[team=blue] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 0.23 0

scoreboard players add .TIME .data 6
scoreboard players set .time_tick .data 19
title @a[tag=!lobby] times 2 16 8
title @a[tag=!lobby] subtitle {"text":"+5 Seconds","color":"white","font":"fancy"}
title @a[tag=!lobby] title {"text":"Blue Flag Taken!","color":"dark_aqua","font":"fancy"}
scoreboard players add @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] stats_attempts 1
tag @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
tag @s remove flag

scoreboard players set .blue_flag_drops .data 0