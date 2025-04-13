give @s map[custom_name={"text":"Reveal","italic":false,"color":"gray"},lore=[{"text":"See enemy players and placables","color":"white","italic":false},{"text":"through walls for 6 seconds","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_map 1

execute as @s[scores={drop_map=1..}] run function game:player/give/reveal