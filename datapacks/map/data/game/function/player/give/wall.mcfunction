give @s bat_spawn_egg[custom_model_data={strings:["1"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Walls","color":"gray","italic":false},lore=[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_silver 1

execute as @s[scores={drop_silver=1..}] run function game:player/give/wall