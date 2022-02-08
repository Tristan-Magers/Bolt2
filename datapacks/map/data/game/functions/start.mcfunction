team leave @a

team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]
team join blue @r[team=]
team join red @r[team=]

kill @a[team=red]
kill @a[team=blue]

scoreboard players set @a kills 0
scoreboard players set @a killStreak 0
scoreboard objectives setdisplay list kills
scoreboard objectives setdisplay sidebar Scores

scoreboard players set Red Scores 0
scoreboard players set Blue Scores 0

execute as @a at @s run function game:player/getitems

kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]

kill @e[tag=redflag]
kill @e[tag=blueflag]

fill -89 -50 -14 -55 -48 57 air replace minecraft:gravel
fill -89 -62 -14 -55 -51 57 air replace minecraft:gravel

fill -57 -58 35 -61 -54 35 gravel
fill -57 -58 7 -61 -54 7 gravel

summon armor_stand -64 -58 -7 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
summon armor_stand -64 -58 49 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

tag @a remove hasflag
tag @a remove hasspawn