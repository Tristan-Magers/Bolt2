clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_model=air]

execute if score .mode .data = .6 .num run give @s[scores={bow_texture=78}] bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
execute unless items entity @s contents bow run give @s[scores={bow_texture=78}] bow[unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1
execute unless items entity @s contents bow run give @s bow[unbreakable={},enchantments={"minecraft:power":255},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}] 1

#item replace entity @s[team=red] armor.chest with leather_chestplate[dyed_color=16711680,unbreakable={}]
#item replace entity @s[team=blue] armor.chest with leather_chestplate{dyed_color=22015,unbreakable={}}