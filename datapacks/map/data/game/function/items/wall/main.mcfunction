scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] at @s if score .mode .data matches 1 run scoreboard players add @p[scores={place_bat_temp=1..}] track_total_ctf_walls 1
execute if entity @s[scores={timer=1}] at @s if score .mode .data matches 1 as @p[scores={place_bat_temp=1..,track_total_ctf_walls=20..},tag=locked_12] run function game:player/unlock/12

execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ redstone_block run tag @s add kill
execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ redstone_block run tellraw @p[scores={place_bat_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ redstone_block run give @p[scores={place_bat_temp=1..}] bat_spawn_egg[custom_model_data={strings:["1"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Walls","color":"gray","italic":false},lore=[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ diamond_block run tag @s add kill
execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ diamond_block run tellraw @p[scores={place_bat_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute if entity @s[scores={timer=1}] at @s if block ~ -60 ~ diamond_block run give @p[scores={place_bat_temp=1..}] bat_spawn_egg[custom_model_data={strings:["1"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Walls","color":"gray","italic":false},lore=[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

execute as @s at @s run data merge entity @s {Size:0,Silent:1b,NoAI:1b,Health:1}
effect give @s minecraft:resistance 100 10 true

execute as @s[scores={timer=1}] at @s run function game:items/lower
execute as @s[scores={timer=1}] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.6 ~ air run tp @s ~ ~0.6 ~

#height cap
execute as @s at @s run function game:items/wall/height_cap with storage maps:active settings
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..50] unless score .map .data = .12 .num unless score .map .data = .15 .num unless score .map .data = .14 .num unless score .map .data = .1 .num unless score .map .data = .13 .num unless score .map .data = .10 .num unless score .map .data = .9 .num unless score .map .data = .6 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..48] if score .map .data = .1 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..40] if score .map .data = .6 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..40] if score .map .data = .9 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..43] if score .map .data = .10 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..47] if score .map .data = .12 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..33] if score .map .data = .13 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..13] if score .map .data = .14 .num run scoreboard players set @s timer 999
#execute as @s at @s positioned ~ 0 ~ if entity @s[distance=..30] if score .map .data = .15 .num run scoreboard players set @s timer 999

execute if score .mode .data matches 1 as @s[scores={timer=999}] at @s as @a[gamemode=adventure,distance=..2,tag=locked_61] if block ~ ~-1 ~ gravel run function game:player/unlock/61
scoreboard players set @s[scores={timer=999}] timer 30

execute as @s at @s if block ~ ~ ~ #minecraft:banners run scoreboard players set @s timer 30

execute if entity @s[scores={timer=30},tag=!height_tested,tag=!kill] at @s run tellraw @p[scores={place_bat_temp=1..}] {"text":"Too high!","color":"dark_gray"}
execute if entity @s[scores={timer=30},tag=!height_tested,tag=!kill] at @s run give @p[scores={place_bat_temp=1..}] bat_spawn_egg[custom_model_data={strings:["1"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Walls","color":"gray","italic":false},lore=[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

tag @s add height_tested

#wall reset
#execute as @s[scores={timer=1}] at @s run fill ~ -60 ~ ~ 100 ~ air replace gravel

#fix wall
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel if block ~ ~-3 ~ gravel if block ~ ~-4 ~ gravel run scoreboard players set @s timer 30
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel if block ~ ~-3 ~ gravel run scoreboard players set @s timer 22
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel if block ~ ~-2 ~ gravel run scoreboard players set @s timer 15
#execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ gravel run scoreboard players set @s timer 8

execute as @s[scores={timer=1},tag=!kill] at @s run particle minecraft:mycelium ~0.52 ~1.5 ~0.52 0 1 0 0 10 force
execute as @s[scores={timer=1},tag=!kill] at @s run particle minecraft:mycelium ~-0.52 ~1.5 ~0.52 0 1 0 0 10 force
execute as @s[scores={timer=1},tag=!kill] at @s run particle minecraft:mycelium ~0.52 ~1.5 ~-0.52 0 1 0 0 10 force
execute as @s[scores={timer=1},tag=!kill] at @s run particle minecraft:mycelium ~-0.52 ~1.5 ~-0.52 0 1 0 0 10 force

execute as @s[scores={timer=1},tag=!kill] at @s run function game:items/wall/blockup
execute as @s[scores={timer=5}] at @s run function game:items/wall/blockup
execute as @s[scores={timer=9}] at @s run function game:items/wall/blockup
execute as @s[scores={timer=13}] at @s run function game:items/wall/blockup
kill @s[scores={timer=13..}]