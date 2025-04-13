give @s crossbow[custom_name={"text":"Crossbow (12 seconds)","italic":false,"color":"gray"},lore=[{"text":"Automatic rapid fire crossbow","color":"white","italic":false},{"text":"Keep out of range of small children","color":"white","italic":false}],enchantments={"minecraft:quick_charge":1},custom_data={trigger:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players set @s[scores={crossbowTime=1..}] crossbowTime 1

scoreboard players set @s drop_crossbow 0