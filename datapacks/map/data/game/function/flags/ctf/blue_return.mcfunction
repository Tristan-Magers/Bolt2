scoreboard players add .TIME .data 16
scoreboard players set .time_tick .data 19
scoreboard players add @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] stats_captures 1

scoreboard players set .give_armor .calc 1
execute if score .1v1_armor .data matches 0 if score .red_players .data matches 1 if score .blue_players .data matches 1.. run scoreboard players set .give_armor .calc 0

execute if score .tmi .data = .0 .num if score .give_armor .calc = .1 .num run give @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] iron_ingot[custom_name={"text":"Armor","color":"gray","italic":false},lore=[{"text":"Survive one arrow hit","color":"white","italic":false},{"text":"Doesn\'t block explosions","color":"white","italic":false},{"text":"Drops the flag","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute at @s if score .testing_mode .data matches 0 if score .mode .data matches 1 if score .tmi .data matches 0 as @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] as @s[tag=totem,tag=locked_77,tag=playing] run function game:player/unlock/77
execute as @a[team=blue] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute as @a[team=blue] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute as @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
tag @e[tag=redflag] add flag
tag @e[tag=redflag] add scored
scoreboard players add Blue Scores 1
execute if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
title @a[tag=!lobby] times 5 15 10
title @a[tag=!lobby] subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
title @a[tag=!lobby] title {"text":"BLUE SCORES!","color":"aqua","font":"fancy"}
clear @a[team=blue] red_banner
tag @a[team=blue] remove hasflag