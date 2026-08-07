#
scoreboard players set @s invul 20

#
gamemode spectator @s
execute as @s at @s run tp @s ~ ~ ~ ~ 0

clear @s arrow
clear @s bow

execute if score .mode .data = .6 .num unless items entity @s contents bow run item replace entity @s[gamemode=!creative,tag=playing] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
execute unless items entity @s contents bow run item replace entity @s[gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow[unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
execute unless items entity @s contents bow run item replace entity @s[gamemode=!creative] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1

effect give @s minecraft:wither 1 1
scoreboard players set @s time_dead 0
scoreboard players set @s respawn 70
scoreboard players set @s respawning_time 0

execute if score .blue_players .data matches 1 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=blue] respawn 45
execute if score .blue_players .data matches 1 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=blue] respawn 40
execute if score .blue_players .data matches 1 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=blue] respawn 35
execute if score .red_players .data matches 1 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=red] respawn 45
execute if score .red_players .data matches 1 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=red] respawn 40
execute if score .red_players .data matches 1 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=red] respawn 35

execute if score .blue_players .data matches 2 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=blue] respawn 60
execute if score .blue_players .data matches 2 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=blue] respawn 50
execute if score .blue_players .data matches 2 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=blue] respawn 40
execute if score .red_players .data matches 2 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=red] respawn 60
execute if score .red_players .data matches 2 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=red] respawn 50
execute if score .red_players .data matches 2 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=red] respawn 40

execute if score .blue_players .data matches 1 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 105
execute if score .blue_players .data matches 1 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 140
execute if score .blue_players .data matches 1 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 175
execute if score .red_players .data matches 1 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 105
execute if score .red_players .data matches 1 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 140
execute if score .red_players .data matches 1 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 175

execute if score .blue_players .data matches 2 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 100
execute if score .blue_players .data matches 2 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 130
execute if score .blue_players .data matches 2 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 160
execute if score .red_players .data matches 2 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 100
execute if score .red_players .data matches 2 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 130
execute if score .red_players .data matches 2 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 160

execute if score .blue_players .data matches 3 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 90
execute if score .blue_players .data matches 3 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 110
execute if score .blue_players .data matches 3 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 130
execute if score .red_players .data matches 3 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 90
execute if score .red_players .data matches 3 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 110
execute if score .red_players .data matches 3 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 130

execute if score .blue_players .data matches 4 if score .team_dif .data >= .1 .num run scoreboard players set @s[team=red] respawn 80
execute if score .blue_players .data matches 4 if score .team_dif .data >= .2 .num run scoreboard players set @s[team=red] respawn 90
execute if score .blue_players .data matches 4 if score .team_dif .data >= .3 .num run scoreboard players set @s[team=red] respawn 100
execute if score .red_players .data matches 4 if score .team_dif .data <= .n1 .num run scoreboard players set @s[team=blue] respawn 80
execute if score .red_players .data matches 4 if score .team_dif .data <= .n2 .num run scoreboard players set @s[team=blue] respawn 90
execute if score .red_players .data matches 4 if score .team_dif .data <= .n3 .num run scoreboard players set @s[team=blue] respawn 100

execute as @s run scoreboard players remove @s respawn_assist 120
execute as @s run scoreboard players operation @s respawn_assist /= .6 .num
execute as @s run scoreboard players operation @s respawn += @s respawn_assist
execute as @s run scoreboard players operation @s respawn_assist *= .n6 .num
scoreboard players set @s[scores={deaths=1..,respawn=..31}] respawn 31

scoreboard players set @s deaths 0

#
tag @s remove hasflag

#
tag @s remove me

#
tag @s remove capture_point