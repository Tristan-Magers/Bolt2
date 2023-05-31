#
scoreboard players add @a p_display_num 0

#
execute if score .1 .menu = .1 num unless entity @a[scores={p_display_num=1}] run scoreboard players set .remove .menu 1
execute if score .1 .menu = .1 num unless entity @a[scores={p_display_num=1}] run function game:menu/p_display/alert_above_slots