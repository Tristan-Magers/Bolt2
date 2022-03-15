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

function game:game/mapstart

gamemode adventure @a

scoreboard players set .gametime .data 1