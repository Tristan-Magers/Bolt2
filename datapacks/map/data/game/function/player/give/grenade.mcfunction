give @s[tag=glitter_hold] snowball[custom_model_data={strings:["1"]},item_name={"italic":false,"text":"Glitter Bomb"}]
give @s[tag=!glitter_hold] snowball[custom_name={"text":"Mini TNT","italic":false,"color":"gray"},lore=[{"text":"Explodes, killing players","color":"white","italic":false},{"text":"Kills traps and respawns","color":"white","italic":false},{"text":"Explodes slower if thrown close","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players remove @s drop_snowball 1

execute as @s[scores={drop_snowball=1..}] run function game:player/give/grenade