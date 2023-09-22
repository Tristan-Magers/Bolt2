#
tag @s add me
scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order -= @s rank_order

execute as @e[tag=rank_dummy,tag=!me] if score @s rank_order = .1 .num run scoreboard players operation @e[tag=me] rank_delta_down = @s rank_real
execute as @e[tag=rank_dummy,tag=!me] if score @s rank_order = .n1 .num run scoreboard players operation @e[tag=me] rank_delta_up = @s rank_real

scoreboard players operation @e[tag=rank_dummy,tag=!me] rank_order += @s rank_order
tag @s remove me

#
scoreboard players operation @s[scores={rank_delta_up=-9998..}] rank_delta_up -= @s rank_real
scoreboard players operation @s[scores={rank_delta_down=-9998..}] rank_delta_down -= @s rank_real

scoreboard players operation @s[scores={rank_delta_down=-9998..0}] rank_delta_down *= .n1 .num