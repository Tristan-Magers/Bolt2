summon marker ~ ~5 ~ {Tags:["new_target"]}

execute as @e[tag=new_target] at @s run function game:items/target/location

execute as @e[tag=new_target] at @s run function game:algor/random_64

execute as @e[tag=new_target,scores={random=..110}] at @s run fill ~ ~ ~ ~ ~ ~ target replace air
execute as @e[tag=new_target,scores={random=111..}] at @s run fill ~ ~ ~ ~ ~ ~ emerald_block replace air
execute as @e[tag=new_target] at @s run particle minecraft:poof ~ ~1 ~ 0.7 0.7 0.7 0.3 10 force
execute as @e[tag=new_target] at @s run particle minecraft:poof ~ ~-1 ~ 0.7 0.7 0.7 0.3 10 force

kill @e[tag=new_target]
tag @e remove new_target