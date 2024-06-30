tag @s add me

#
execute as @s[scores={p_display_num=1..6}] as @a[scores={p_display_num=1..6}] if score @s p_display_num > @p[tag=me] p_display_num run tag @s add adjusting_slot
execute as @s[scores={p_display_num=1..6}] as @a[scores={p_display_num=1..6}] if score @s p_display_num > @p[tag=me] p_display_num run scoreboard players remove @s p_display_num 1

execute as @s[scores={p_display_num=7..12}] as @a[scores={p_display_num=7..12}] if score @s p_display_num > @p[tag=me] p_display_num run tag @s add adjusting_slot
execute as @s[scores={p_display_num=7..12}] as @a[scores={p_display_num=7..12}] if score @s p_display_num > @p[tag=me] p_display_num run scoreboard players remove @s p_display_num 1

tag @s remove me
