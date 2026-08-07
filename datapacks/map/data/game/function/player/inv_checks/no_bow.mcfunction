clear @s bow
clear @s bone
clear @s minecraft:black_stained_glass_pane
tag @s add lobby_inv_correct
execute if score .mode .data = .6 .num run item replace entity @s[tag=playing] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
item replace entity @s[scores={bow_texture=78}] hotbar.0 with bow[unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
item replace entity @s hotbar.0 with bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
