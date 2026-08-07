execute if score @s master_menu matches 1 run function bcm:dialog/render_box
execute if score @s master_menu matches 2 run function bcm:dialog/pos_and_rot
execute if score @s master_menu matches 3 run function bcm:dialog/targets_and_crates
execute if score @s master_menu matches 4 run function bcm:dialog/map_settings
execute if score @s master_menu matches 5 run function bcm:dialog/save_map
execute if score @s master_menu matches 6 run function bcm:editor/leave_to_lobby

scoreboard players reset @s master_menu