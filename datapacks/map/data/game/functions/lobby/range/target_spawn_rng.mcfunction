tag @s add this
scoreboard players add .tries .data 1
execute store result entity @s Pos[0] double 1 run random value -286..-280
execute store result entity @s Pos[1] double 1 run random value -54..-45
execute store result entity @s Pos[2] double 1 run random value 239..260
execute at @s if entity @e[type=marker,tag=range_target,tag=!this,distance=..5] unless score .tries data matches 200.. run function game:lobby/range/target_spawn_rng
tag @s remove this