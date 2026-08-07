give @s iron_ingot[custom_name={"text":"Armor","color":"gray","italic":false},lore=[{"text":"Survive one arrow hit","color":"white","italic":false},{"text":"Doesn't block explosions","color":"white","italic":false},{"text":"Drops the flag","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_iron 1

execute as @s[scores={drop_iron=1..}] run function game:player/give/shield