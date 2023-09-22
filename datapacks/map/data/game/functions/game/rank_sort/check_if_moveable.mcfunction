#
tag @s add me
scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order -= @s rank_order

execute as @e[tag=rank_dummy,tag=!me,team=blue] if score @s rank_order = .1 .num run tag @e[tag=me] add can_move_down
execute as @e[tag=rank_dummy,tag=!me,team=blue] if score @s rank_order = .n1 .num run tag @e[tag=me] add can_move_up

scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order += @s rank_order
tag @s remove me

#
tag @s[scores={rank_delta_up=-9999}] remove can_move_up
tag @s[scores={rank_delta_down=-9999}] remove can_move_down