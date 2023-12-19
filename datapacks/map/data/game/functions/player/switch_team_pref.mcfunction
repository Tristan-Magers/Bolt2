team leave @s
function game:menu/p_display/reset_player
clear @s minecraft:leather_chestplate
clear @s minecraft:leather_leggings
clear @s minecraft:leather_boots
clear @s minecraft:bow
scoreboard players operation @s team_pref_temp = @s team_pref