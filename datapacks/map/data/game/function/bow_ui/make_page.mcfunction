clear @s minecraft:magenta_glazed_terracotta
clear @s black_stained_glass_pane
clear @s bone

#
item replace entity @s inventory.0 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.1 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.2 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.3 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.4 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.5 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.6 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.7 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.8 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.9 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.10 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.11 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.12 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.13 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.14 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.15 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.16 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
item replace entity @s inventory.17 with black_stained_glass_pane[custom_name={"text":" "},tooltip_display={hide_tooltip:true}]
#item replace entity @s inventory.18 with air
#item replace entity @s inventory.19 with air
#item replace entity @s inventory.20 with air
#item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[custom_name={"italic":false,"text":"Next Page"}]

execute if score @s bow_ui_page matches 0 run item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:1"}],custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
execute if score @s bow_ui_page matches 0 run item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:1"}],custom_name={"text":"Next Page","italic":false}]
execute if score @s bow_ui_page matches 1 run item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:2"}],custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
execute if score @s bow_ui_page matches 1 run item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:2"}],custom_name={"text":"Next Page","italic":false}]
execute if score @s bow_ui_page matches 2 run item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:3"}],custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
execute if score @s bow_ui_page matches 2 run item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:3"}],custom_name={"text":"Next Page","italic":false}]
execute if score @s bow_ui_page matches 3 run item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:4"}],custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
execute if score @s bow_ui_page matches 3 run item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:4"}],custom_name={"text":"Next Page","italic":false}]
execute if score @s bow_ui_page matches 4 run item replace entity @s inventory.25 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:5"}],custom_model_data={strings:["1"]},custom_name={"text":"Previous Page","italic":false}]
execute if score @s bow_ui_page matches 4 run item replace entity @s inventory.26 with minecraft:magenta_glazed_terracotta[lore=[{"color":"dark_gray","italic":false,"text":"Page:5"}],custom_name={"text":"Next Page","italic":false}]

execute if score @s code_1 matches 0 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["0"]}]
execute if score @s code_1 matches 1 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["1"]}]
execute if score @s code_1 matches 2 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["2"]}]
execute if score @s code_1 matches 3 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["3"]}]
execute if score @s code_1 matches 4 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["4"]}]
execute if score @s code_1 matches 5 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["5"]}]
execute if score @s code_1 matches 6 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["6"]}]
execute if score @s code_1 matches 7 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["7"]}]
execute if score @s code_1 matches 8 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["8"]}]
execute if score @s code_1 matches 9 run item replace entity @s inventory.18 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["9"]}]

execute if score @s code_2 matches 0 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["0"]}]
execute if score @s code_2 matches 1 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["1"]}]
execute if score @s code_2 matches 2 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["2"]}]
execute if score @s code_2 matches 3 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["3"]}]
execute if score @s code_2 matches 4 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["4"]}]
execute if score @s code_2 matches 5 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["5"]}]
execute if score @s code_2 matches 6 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["6"]}]
execute if score @s code_2 matches 7 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["7"]}]
execute if score @s code_2 matches 8 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["8"]}]
execute if score @s code_2 matches 9 run item replace entity @s inventory.19 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["9"]}]

execute if score @s code_3 matches 0 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["0"]}]
execute if score @s code_3 matches 1 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["1"]}]
execute if score @s code_3 matches 2 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["2"]}]
execute if score @s code_3 matches 3 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["3"]}]
execute if score @s code_3 matches 4 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["4"]}]
execute if score @s code_3 matches 5 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["5"]}]
execute if score @s code_3 matches 6 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["6"]}]
execute if score @s code_3 matches 7 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["7"]}]
execute if score @s code_3 matches 8 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["8"]}]
execute if score @s code_3 matches 9 run item replace entity @s inventory.20 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["9"]}]

#execute if score @s code_4 matches 0 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["0"]}]
#execute if score @s code_4 matches 1 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["1"]}]
#execute if score @s code_4 matches 2 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["2"]}]
#execute if score @s code_4 matches 3 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["3"]}]
#execute if score @s code_4 matches 4 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["4"]}]
#execute if score @s code_4 matches 5 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["5"]}]
#execute if score @s code_4 matches 6 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["6"]}]
#execute if score @s code_4 matches 7 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["7"]}]
#execute if score @s code_4 matches 8 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["8"]}]
#execute if score @s code_4 matches 9 run item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Code","italic":false},minecraft:custom_model_data={strings:["9"]}]

item replace entity @s inventory.21 with minecraft:bone[custom_name={"text":"Enter Code","italic":false},minecraft:custom_model_data={strings:["button"]}]
item replace entity @s[tag=button_confirm] inventory.21 with minecraft:bone[custom_name={"text":"Are you sure you want to reset progress?","italic":false},minecraft:custom_model_data={strings:["button_confirm"]},lore=[{"color":"gray","text":"Change code to undo","italic":false}]]

#
scoreboard players add @s bow_ui_page 0

#
scoreboard players set @s v_1 0
scoreboard players operation @s v_2 = @s bow_ui_page
scoreboard players operation @s v_2 *= .18 .num

function game:bow_ui/next_slot