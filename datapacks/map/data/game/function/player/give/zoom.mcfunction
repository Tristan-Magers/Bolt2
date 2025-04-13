give @s ender_pearl[custom_name={"text":"Zoomies (8 Seconds)","italic":false,"color":"gray"},lore=[{"text":"Speed and jump boost for 8 seconds","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_zoom 1

execute as @s[scores={drop_zoom=1..}] run function game:player/give/zoom