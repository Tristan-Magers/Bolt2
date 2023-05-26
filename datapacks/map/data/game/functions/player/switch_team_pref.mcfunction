team leave @s
function game:menu/p_display/alert_above_slots
scoreboard players set @s p_display_num 0
function game:menu/p_display/reset
clear @s minecraft:leather_chestplate
clear @s minecraft:bow
scoreboard players operation @s team_pref_temp = @s team_pref