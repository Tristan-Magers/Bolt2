team leave @s
function game:menu/p_display/reset_player
clear @s carrot_on_a_stick
item replace entity @s hotbar.8 with minecraft:arrow 3
scoreboard players operation @s team_pref_temp = @s team_pref
tag @s add new_team
scoreboard players set @s lobby_text_time 0
scoreboard players set @s[tag=no_switch_text] lobby_text_time 10
title @s[tag=no_switch_text] actionbar {"text":""}

tag @s remove no_switch_text

playsound minecraft:ui.loom.select_pattern master @s[scores={team_pref=0..}]
playsound minecraft:item.armor.equip_netherite master @s[scores={team_pref=0..}]

playsound minecraft:item.armor.equip_wolf master @s[scores={team_pref=..-1}]