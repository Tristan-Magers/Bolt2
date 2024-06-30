execute as @e[type=marker,tag=range_target] at @s unless block ~ ~ ~ target run kill @s

execute store result score .range_target_count .data if entity @e[type=marker,tag=range_target]

execute unless score .range_target_count .data matches 4.. run function game:lobby/range/target_spawn