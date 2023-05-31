# say running sort_targets.mcfunction ...

scoreboard players set #obstruction .data 0
execute positioned ~ ~1.8 ~ run execute as @e[tag=targeting] facing entity @s eyes run function game:ffa/turret/check_obstruction
execute unless score #obstruction .data matches 1 run tag @e[limit=1,sort=nearest] add targetSpawn
# execute if score #obstruction .data matches 0 run tag @p add targetSpawn