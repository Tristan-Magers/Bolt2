summon marker ~ ~5 ~ {Tags:["new_target"]}

execute as @e[tag=new_target] at @s run function game:items/target/location

execute as @e[tag=new_target] store result score @s random run random value 0..127

execute as @e[tag=new_target,scores={random=..110},tag=!fail_spot] at @s run fill ~ ~ ~ ~ ~ ~ target replace air
execute as @e[tag=new_target,scores={random=111..},tag=!fail_spot] at @s run fill ~ ~ ~ ~ ~ ~ emerald_block replace air
execute as @e[tag=new_target,tag=!fail_spot] at @s run particle minecraft:poof ~ ~1 ~ 0.7 0.7 0.7 0.3 10 force
execute as @e[tag=new_target,tag=!fail_spot] at @s run particle minecraft:poof ~ ~-1 ~ 0.7 0.7 0.7 0.3 10 force

execute as @e[tag=new_target,tag=!fail_spot] at @s run scoreboard players remove @e[tag=target_marker] t2 1
execute as @e[tag=new_target,tag=!fail_spot] at @s run scoreboard players set @e[tag=target_marker,limit=1,sort=nearest] t2 15

kill @e[tag=new_target]
tag @e remove new_target