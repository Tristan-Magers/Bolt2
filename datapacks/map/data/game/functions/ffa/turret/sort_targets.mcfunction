scoreboard players set #obstruction .data 0
execute at @s positioned ~ ~1 ~ facing entity @e[tag=targeting,limit=1] eyes run function game:ffa/turret/check_obstruction
execute if score #obstruction .data matches 0 run tag @s add targetSpawn