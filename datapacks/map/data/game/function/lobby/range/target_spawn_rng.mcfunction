tag @s add this

tag @s add new

scoreboard players add .tries .data 1

#execute store result score @s random run random value -143..-140
#scoreboard players operation @s random *= .2 .num
#execute store result entity @s Pos[2] double 1 run scoreboard players get @s random

#execute store result score @s random run random value -26..-22
#scoreboard players operation @s random *= .2 .num
#execute store result entity @s Pos[1] double 1 run scoreboard players get @s random

#execute store result score @s random run random value 120..130
#scoreboard players operation @s random *= .2 .num
#execute store result entity @s Pos[0] double 1 run scoreboard players get @s random

execute store result entity @s Pos[2] double 1 run random value -286..-280
execute store result entity @s Pos[1] double 1 run random value -54..-45
execute store result entity @s Pos[0] double 1 run random value 239..260

execute as @s at @s if entity @e[tag=range_target,tag=!this,distance=..4] unless score .tries .data matches 200.. run function game:lobby/range/target_spawn_rng
tag @s remove this