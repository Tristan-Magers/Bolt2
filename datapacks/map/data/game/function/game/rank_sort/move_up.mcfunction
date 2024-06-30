#
tag @s add me
scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order -= @s rank_order

execute as @e[tag=rank_dummy,tag=!me] if score @s rank_order = .n1 .num run team join red

scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order += @s rank_order
tag @s remove me

#
team join blue