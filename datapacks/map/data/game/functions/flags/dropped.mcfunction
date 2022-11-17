#
execute at @s run tp @s ~ ~ ~ ~3 0
effect give @s glowing 10 10 true

team join red @s[tag=redflag]
team join blue @s[tag=blueflag]

execute at @s positioned ~-1 ~-1 ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] add hasflag
execute at @s positioned ~-1 ~-1 ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] add hasflag

execute at @s positioned ~-1 ~-1 ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] run kill @s
execute at @s positioned ~-1 ~-1 ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.1,dz=1,scores={no_cap=..0}] run kill @s

scoreboard players add @s t 1

execute as @s[scores={t=60..}] at @s run particle minecraft:large_smoke ~ ~2 ~ 0.3 0.8 0.3 0 20 force

kill @s[scores={t=60..}]

