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

scoreboard players set @a[team=red] deaths 1
scoreboard players set @a[team=blue] deaths 1

scoreboard players set @a kill 0

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

execute if score .map .data = .1 .num run function game:map/towers/start
execute if score .map .data = .2 .num run function game:map/caves/start
execute if score .map .data = .3 .num run function game:map/divide/start
execute if score .map .data = .4 .num run function game:map/corners/start

tag @a remove hasflag
tag @a remove hasspawn

gamemode adventure @a