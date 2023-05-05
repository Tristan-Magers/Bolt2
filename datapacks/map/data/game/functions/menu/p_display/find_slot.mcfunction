#
scoreboard players add @s team_pref 0

#
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=1}] run scoreboard players set @s p_display_num 1
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=7}] run scoreboard players set @s p_display_num 7
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=2}] run scoreboard players set @s p_display_num 2
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=8}] run scoreboard players set @s p_display_num 8
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=3}] run scoreboard players set @s p_display_num 3
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=9}] run scoreboard players set @s p_display_num 9
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=10}] run scoreboard players set @s p_display_num 10
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=4}] run scoreboard players set @s p_display_num 4
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=11}] run scoreboard players set @s p_display_num 11
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=5}] run scoreboard players set @s p_display_num 5
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=12}] run scoreboard players set @s p_display_num 12
execute as @s[scores={p_display_num=0,team_pref=0}] unless entity @a[scores={p_display_num=6}] run scoreboard players set @s p_display_num 6

execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=1,team_pref=1}] run scoreboard players set @s p_display_num 1
execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=2,team_pref=1}] run scoreboard players set @s p_display_num 2
execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=3,team_pref=1}] run scoreboard players set @s p_display_num 3
execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=4,team_pref=1}] run scoreboard players set @s p_display_num 4
execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=5,team_pref=1}] run scoreboard players set @s p_display_num 5
execute as @s[scores={p_display_num=0,team_pref=1}] unless entity @a[scores={p_display_num=6,team_pref=1}] run scoreboard players set @s p_display_num 6

execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=7,team_pref=2}] run scoreboard players set @s p_display_num 7
execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=8,team_pref=2}] run scoreboard players set @s p_display_num 8
execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=9,team_pref=2}] run scoreboard players set @s p_display_num 9
execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=10,team_pref=2}] run scoreboard players set @s p_display_num 10
execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=11,team_pref=2}] run scoreboard players set @s p_display_num 11
execute as @s[scores={p_display_num=0,team_pref=2}] unless entity @a[scores={p_display_num=12,team_pref=2}] run scoreboard players set @s p_display_num 12

tag @s add me

execute as @a[tag=!me] if score @s p_display_num = @p[tag=me] p_display_num run tag @s add slot_removed
execute as @a[tag=!me] if score @s p_display_num = @p[tag=me] p_display_num run scoreboard players set @s p_display_num 0

tag @s remove me