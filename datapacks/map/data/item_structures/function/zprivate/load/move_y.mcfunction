execute as @e[tag=org_y,limit=1,type=marker,tag=loader,sort=nearest] at @s run tp @s ~ ~1 ~
tp @s @e[tag=org_y,limit=1,type=marker,tag=loader,sort=nearest]
tp @e[tag=org_z,limit=1,type=marker,tag=loader,sort=nearest] @s

scoreboard players remove #count vect_y 1
scoreboard players operation #count vect_z = #system vect_z

#tellraw @a ["move y: ",{score:{name:"@s",objective:"vect_y"}}," layers left"]
execute if score #count vect_y matches 1.. run return run function item_structures:zprivate/load/move
#execute if score #count vect_y matches ..0 run schedule function item_structures:zprivate/load/end 1t
execute if score #count vect_y matches ..0 run function #item_structures:finish_load