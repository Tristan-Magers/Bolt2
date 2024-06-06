team leave @s
function game:menu/p_display/reset_player
clear @s
item replace entity @s hotbar.8 with minecraft:arrow 3
scoreboard players operation @s team_pref_temp = @s team_pref
tag @s add new_team