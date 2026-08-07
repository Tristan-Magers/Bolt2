#
playsound minecraft:ui.stonecutter.select_recipe master @s ~ ~ ~ 0.5 1.1

scoreboard players set @s bow_throw 0

#
function game:player/bow/next_and_check

#bow correct
clear @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] bow
execute if score .mode .data = .6 .num run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,tag=playing] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow[unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1

#
tag @s add lobby_inv_correct

#
function game:bow_ui/make_page
