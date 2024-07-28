# say running sort_targets.mcfunction ...

scoreboard players set #obstruction .data 0

tag @s remove crouching
#tag @s[scores={crouch=1..}] add crouching

scoreboard players set #debugPart .data 1

execute as @s[tag=crouching] at @e[tag=targeting,limit=1] positioned ~ ~0.7 ~ facing entity @s eyes run function game:ffa/turret/check_obstruction
execute as @s[tag=!crouching] at @e[tag=targeting,limit=1] positioned ~ ~0.7 ~ facing entity @s eyes run function game:ffa/turret/check_obstruction

scoreboard players set #debugPart .data 0

#execute as @s[tag=crouching] positioned ~ ~1.2 ~ run execute as @e[tag=targeting] facing entity @s eyes run function game:ffa/turret/check_obstruction
#execute as @s[tag=!crouching] positioned ~ ~1.4 ~ run execute as @e[tag=targeting] facing entity @s eyes run function game:ffa/turret/check_obstruction

execute unless score #obstruction .data matches 1 run tag @s add targetSpawn
# execute if score #obstruction .data matches 0 run tag @p add targetSpawn