clear @s magenta_glazed_terracotta
clear @s black_stained_glass_pane

#
item replace entity @s inventory.0 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.1 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.2 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.3 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.4 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.5 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.6 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.7 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.8 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.9 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.10 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.11 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.12 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.13 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.14 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.15 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.16 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.17 with black_stained_glass_pane[custom_name='{"text":" "}']
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[custom_name='{"text":"Previous Page","italic":false}',HideFlags:255]
item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[custom_name='{"text":"Next Page","italic":false}',HideFlags:255]

#
scoreboard players add @s bow_ui_page 0

#
scoreboard players set @s v_1 0
scoreboard players operation @s v_2 = @s bow_ui_page
scoreboard players operation @s v_2 *= .18 .num

function game:bow_ui/next_slot