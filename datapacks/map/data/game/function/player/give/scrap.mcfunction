give @s minecraft:netherite_scrap[custom_name={"text":"Scrap (Return to Generator)","italic":false},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_scrap 1

execute as @s[scores={drop_scrap=1..}] run function game:player/give/scrap

function game:player/scrap_correct