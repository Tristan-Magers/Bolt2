#
execute as @s[scores={p_display_num=1,dead_head=1}] as @a[scores={p_display_num=1}] run loot replace entity @e[type=giant,tag=1,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=2,dead_head=1}] as @a[scores={p_display_num=2}] run loot replace entity @e[type=giant,tag=2,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=3,dead_head=1}] as @a[scores={p_display_num=3}] run loot replace entity @e[type=giant,tag=3,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=4,dead_head=1}] as @a[scores={p_display_num=4}] run loot replace entity @e[type=giant,tag=4,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=5,dead_head=1}] as @a[scores={p_display_num=5}] run loot replace entity @e[type=giant,tag=5,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=6,dead_head=1}] as @a[scores={p_display_num=6}] run loot replace entity @e[type=giant,tag=6,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=7,dead_head=1}] as @a[scores={p_display_num=7}] run loot replace entity @e[type=giant,tag=7,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=8,dead_head=1}] as @a[scores={p_display_num=8}] run loot replace entity @e[type=giant,tag=8,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=9,dead_head=1}] as @a[scores={p_display_num=9}] run loot replace entity @e[type=giant,tag=9,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=10,dead_head=1}] as @a[scores={p_display_num=10}] run loot replace entity @e[type=giant,tag=10,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=11,dead_head=1}] as @a[scores={p_display_num=11}] run loot replace entity @e[type=giant,tag=11,tag=!off] weapon.mainhand loot game:player_head
execute as @s[scores={p_display_num=12,dead_head=1}] as @a[scores={p_display_num=12}] run loot replace entity @e[type=giant,tag=12,tag=!off] weapon.mainhand loot game:player_head

execute as @s[scores={p_display_num=1,dead_head=1}] as @a[scores={p_display_num=1}] run loot replace entity @e[type=giant,tag=1,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=2,dead_head=1}] as @a[scores={p_display_num=2}] run loot replace entity @e[type=giant,tag=2,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=3,dead_head=1}] as @a[scores={p_display_num=3}] run loot replace entity @e[type=giant,tag=3,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=4,dead_head=1}] as @a[scores={p_display_num=4}] run loot replace entity @e[type=giant,tag=4,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=5,dead_head=1}] as @a[scores={p_display_num=5}] run loot replace entity @e[type=giant,tag=5,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=6,dead_head=1}] as @a[scores={p_display_num=6}] run loot replace entity @e[type=giant,tag=6,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=7,dead_head=1}] as @a[scores={p_display_num=7}] run loot replace entity @e[type=giant,tag=7,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=8,dead_head=1}] as @a[scores={p_display_num=8}] run loot replace entity @e[type=giant,tag=8,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=9,dead_head=1}] as @a[scores={p_display_num=9}] run loot replace entity @e[type=giant,tag=9,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=10,dead_head=1}] as @a[scores={p_display_num=10}] run loot replace entity @e[type=giant,tag=10,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=11,dead_head=1}] as @a[scores={p_display_num=11}] run loot replace entity @e[type=giant,tag=11,tag=off] weapon.offhand loot game:player_head
execute as @s[scores={p_display_num=12,dead_head=1}] as @a[scores={p_display_num=12}] run loot replace entity @e[type=giant,tag=12,tag=off] weapon.offhand loot game:player_head

#
scoreboard players remove @s dead_head 1