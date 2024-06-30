#
fill 264 -39 -221 260 -49 -217 minecraft:black_concrete_powder replace minecraft:barrier
fill 260 -39 -255 264 -49 -251 minecraft:black_concrete_powder replace minecraft:barrier

#
scoreboard players add @a p_display_num 0

tag @a remove has_display_slot
tag @a[scores={p_display_num=1..}] add has_display_slot
tag @a[tag=adjusting_slot] remove has_display_slot
tag @a remove adjusting_slot

#
execute as @a[scores={p_display_num=0,team_pref=0..}] run function game:menu/p_display/find_slot

#
execute as @a run function game:menu/p_display/find_slot
execute as @a[tag=slot_removed] run function game:menu/p_display/find_slot
tag @a remove slot_removed

#
tag @a[scores={p_display_num=1..}] add has_display_slot

#
execute as @a[scores={p_display_num=1..}] run function game:menu/p_display/adjust_display

#
execute if entity @a[scores={p_display_num=1}] run fill 263 -43 -252 264 -45 -251 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=2}] run fill 260 -43 -255 261 -45 -254 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=3}] run fill 263 -39 -252 264 -41 -251 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=4}] run fill 260 -39 -255 261 -41 -254 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=5}] run fill 263 -47 -252 264 -49 -251 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=6}] run fill 260 -47 -255 261 -49 -254 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=7}] run fill 264 -43 -221 263 -45 -220 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=8}] run fill 261 -43 -218 260 -45 -217 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=9}] run fill 264 -39 -221 263 -41 -220 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=10}] run fill 261 -39 -218 260 -41 -217 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=11}] run fill 264 -47 -221 263 -49 -220 barrier replace minecraft:black_concrete_powder
execute if entity @a[scores={p_display_num=12}] run fill 261 -47 -218 260 -49 -217 barrier replace minecraft:black_concrete_powder

#
execute as @a[scores={p_display_num=1}] run loot replace entity @e[type=giant,tag=1] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=2}] run loot replace entity @e[type=giant,tag=2] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=3}] run loot replace entity @e[type=giant,tag=3] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=4}] run loot replace entity @e[type=giant,tag=4] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=5}] run loot replace entity @e[type=giant,tag=5] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=6}] run loot replace entity @e[type=giant,tag=6] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=7}] run loot replace entity @e[type=giant,tag=7] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=8}] run loot replace entity @e[type=giant,tag=8] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=9}] run loot replace entity @e[type=giant,tag=9] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=10}] run loot replace entity @e[type=giant,tag=10] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=11}] run loot replace entity @e[type=giant,tag=11] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=12}] run loot replace entity @e[type=giant,tag=12] weapon.offhand loot game:player_head

#
execute unless entity @a[scores={p_display_num=1}] run item replace entity @e[type=minecraft:giant,tag=1] weapon.offhand with air
execute unless entity @a[scores={p_display_num=2}] run item replace entity @e[type=minecraft:giant,tag=2] weapon.offhand with air
execute unless entity @a[scores={p_display_num=3}] run item replace entity @e[type=minecraft:giant,tag=3] weapon.offhand with air
execute unless entity @a[scores={p_display_num=4}] run item replace entity @e[type=minecraft:giant,tag=4] weapon.offhand with air
execute unless entity @a[scores={p_display_num=5}] run item replace entity @e[type=minecraft:giant,tag=5] weapon.offhand with air
execute unless entity @a[scores={p_display_num=6}] run item replace entity @e[type=minecraft:giant,tag=6] weapon.offhand with air
execute unless entity @a[scores={p_display_num=7}] run item replace entity @e[type=minecraft:giant,tag=7] weapon.offhand with air
execute unless entity @a[scores={p_display_num=8}] run item replace entity @e[type=minecraft:giant,tag=8] weapon.offhand with air
execute unless entity @a[scores={p_display_num=9}] run item replace entity @e[type=minecraft:giant,tag=9] weapon.offhand with air
execute unless entity @a[scores={p_display_num=10}] run item replace entity @e[type=minecraft:giant,tag=10] weapon.offhand with air
execute unless entity @a[scores={p_display_num=11}] run item replace entity @e[type=minecraft:giant,tag=11] weapon.offhand with air
execute unless entity @a[scores={p_display_num=12}] run item replace entity @e[type=minecraft:giant,tag=12] weapon.offhand with air

#
execute unless entity @a[scores={p_display_num=1}] run tag @e[type=minecraft:giant,tag=1] add kill
execute unless entity @a[scores={p_display_num=2}] run tag @e[type=minecraft:giant,tag=2] add kill
execute unless entity @a[scores={p_display_num=3}] run tag @e[type=minecraft:giant,tag=3] add kill
execute unless entity @a[scores={p_display_num=4}] run tag @e[type=minecraft:giant,tag=4] add kill
execute unless entity @a[scores={p_display_num=5}] run tag @e[type=minecraft:giant,tag=5] add kill
execute unless entity @a[scores={p_display_num=6}] run tag @e[type=minecraft:giant,tag=6] add kill
execute unless entity @a[scores={p_display_num=7}] run tag @e[type=minecraft:giant,tag=7] add kill
execute unless entity @a[scores={p_display_num=8}] run tag @e[type=minecraft:giant,tag=8] add kill
execute unless entity @a[scores={p_display_num=9}] run tag @e[type=minecraft:giant,tag=9] add kill
execute unless entity @a[scores={p_display_num=10}] run tag @e[type=minecraft:giant,tag=10] add kill
execute unless entity @a[scores={p_display_num=11}] run tag @e[type=minecraft:giant,tag=11] add kill
execute unless entity @a[scores={p_display_num=12}] run tag @e[type=minecraft:giant,tag=12] add kill