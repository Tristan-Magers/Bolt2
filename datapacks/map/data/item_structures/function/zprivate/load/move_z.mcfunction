execute as @e[tag=org_z,limit=1,type=marker,tag=loader,sort=nearest] at @s run tp @s ~ ~ ~1
tp @s @e[tag=org_z,limit=1,type=marker,tag=loader,sort=nearest]

scoreboard players remove #count vect_z 1
scoreboard players operation #count vect_x = #system vect_x

execute store result bossbar progress value run scoreboard players add value vect_x 1

execute if score #count vect_z matches 1.. run return run function item_structures:zprivate/load/move
execute if score #count vect_z matches ..0 run function item_structures:zprivate/load/move_y