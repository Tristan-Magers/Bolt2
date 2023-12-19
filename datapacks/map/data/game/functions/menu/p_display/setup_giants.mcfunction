#
item replace entity @e[type=giant,tag=1,tag=!off] weapon.mainhand with air
item replace entity @e[type=giant,tag=1,tag=off] weapon.offhand with air

#
scoreboard players add @e[type=giant] dead_head 0

#
effect give @e[type=giant] invisibility 999999 100 true

execute as @a[scores={p_display_num=1,dead_head=0}] run loot replace entity @e[type=giant,tag=1,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=2,dead_head=0}] run loot replace entity @e[type=giant,tag=2,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=3,dead_head=0}] run loot replace entity @e[type=giant,tag=3,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=4,dead_head=0}] run loot replace entity @e[type=giant,tag=4,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=5,dead_head=0}] run loot replace entity @e[type=giant,tag=5,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=6,dead_head=0}] run loot replace entity @e[type=giant,tag=6,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=7,dead_head=0}] run loot replace entity @e[type=giant,tag=7,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=8,dead_head=0}] run loot replace entity @e[type=giant,tag=8,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=9,dead_head=0}] run loot replace entity @e[type=giant,tag=9,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=10,dead_head=0}] run loot replace entity @e[type=giant,tag=10,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=11,dead_head=0}] run loot replace entity @e[type=giant,tag=11,tag=!off] weapon.mainhand loot game:player_head
execute as @a[scores={p_display_num=12,dead_head=0}] run loot replace entity @e[type=giant,tag=12,tag=!off] weapon.mainhand loot game:player_head

execute as @a[scores={p_display_num=1,dead_head=0}] run loot replace entity @e[type=giant,tag=1,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=2,dead_head=0}] run loot replace entity @e[type=giant,tag=2,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=3,dead_head=0}] run loot replace entity @e[type=giant,tag=3,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=4,dead_head=0}] run loot replace entity @e[type=giant,tag=4,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=5,dead_head=0}] run loot replace entity @e[type=giant,tag=5,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=6,dead_head=0}] run loot replace entity @e[type=giant,tag=6,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=7,dead_head=0}] run loot replace entity @e[type=giant,tag=7,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=8,dead_head=0}] run loot replace entity @e[type=giant,tag=8,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=9,dead_head=0}] run loot replace entity @e[type=giant,tag=9,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=10,dead_head=0}] run loot replace entity @e[type=giant,tag=10,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=11,dead_head=0}] run loot replace entity @e[type=giant,tag=11,tag=off] weapon.offhand loot game:player_head
execute as @a[scores={p_display_num=12,dead_head=0}] run loot replace entity @e[type=giant,tag=12,tag=off] weapon.offhand loot game:player_head

tag @e[type=giant,tag=new] remove new

scoreboard players set @e[type=giant,tag=1] p_display_num 1
scoreboard players set @e[type=giant,tag=2] p_display_num 2
scoreboard players set @e[type=giant,tag=3] p_display_num 3
scoreboard players set @e[type=giant,tag=4] p_display_num 4
scoreboard players set @e[type=giant,tag=5] p_display_num 5
scoreboard players set @e[type=giant,tag=6] p_display_num 6
scoreboard players set @e[type=giant,tag=7] p_display_num 7
scoreboard players set @e[type=giant,tag=8] p_display_num 8
scoreboard players set @e[type=giant,tag=9] p_display_num 9
scoreboard players set @e[type=giant,tag=10] p_display_num 10
scoreboard players set @e[type=giant,tag=11] p_display_num 11
scoreboard players set @e[type=giant,tag=12] p_display_num 12