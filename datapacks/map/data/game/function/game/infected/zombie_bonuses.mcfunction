#

execute if score .zombie_evolve_type_1 .data = .1 .num run effect give @s jump_boost 120 2 true
execute if score .zombie_evolve_type_1 .data = .1 .num run tag @s add zombie_jump

execute if score .zombie_evolve_type_0 .data = .1 .num run effect give @s speed 120 1 true
#execute if score .zombie_evolve_type_0 .data = .1 .num if score .zombie_evolve_type_1 .data = .1 .num run effect give @s speed 120 2 true

execute if score .zombie_evolve_type_2 .data = .1 .num run give @s[nbt=!{Inventory:[{id:"minecraft:netherite_sword"}]}] minecraft:netherite_sword[custom_name={"text":"Claws","italic":false,"color":"gray"},minecraft:max_damage=1,lore=[{"text":"Claw players, placables, and walls","color":"white","italic":false}],damage=0,can_break=[{blocks:"gravel"}],enchantments={"minecraft:knockback":3},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:100,operation:"add_value",slot:"any"}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute if score .zombie_evolve_type_3 .data = .1 .num run scoreboard players set @s[tag=!item_minion] item_minion 140
execute if score .zombie_evolve_type_3 .data = .1 .num run tag @s add item_minion
execute if score .zombie_evolve_type_4 .data = .1 .num run scoreboard players set @s[tag=!item_boost] item_boost 140
execute if score .zombie_evolve_type_4 .data = .1 .num run tag @s add item_boost
execute if score .zombie_evolve_type_5 .data = .1 .num run tag @s add dark_immune
execute if score .zombie_evolve_type_5 .data = .1 .num run tag @s remove dark
#execute if score .zombie_evolve_type_6 .data = .1 .num run give @s[tag=!more_armor] iron_ingot{custom_name={"text":"Armor","color":"gray","italic":false},lore=[{"text":"Survive one arrow hit","color":"white","italic":false},{"text":"Doesn\'t block explosions","color":"white","italic":false},{"text":"Drops the flag","color":"white","italic":false}]}} 1
#execute if score .zombie_evolve_type_6 .data = .1 .num run tag @s add more_armor
execute if score .zombie_evolve_type_4 .data = .1 .num run scoreboard players set @s[tag=!item_acid] item_acid 140
execute if score .zombie_evolve_type_7 .data = .1 .num run tag @s add item_acid