execute as @e[tag=org_y,limit=1,type=marker,tag=saver,sort=nearest] at @s run tp @s ~ ~1 ~
tp @s @e[tag=org_y,limit=1,type=marker,tag=saver,sort=nearest]
tp @e[tag=org_z,limit=1,type=marker,tag=saver,sort=nearest] @s

scoreboard players remove #count vect_y 1
scoreboard players operation #count vect_z = #system vect_z

execute if score #count vect_y matches 1.. run return run function item_structures:zprivate/save/move
execute if score #count vect_y matches ..0 run function #item_structures:finish_save