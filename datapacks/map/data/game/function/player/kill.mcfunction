# Team deathmatch scores
execute as @s[team=red] if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score Red Scores < .endscore .stats run scoreboard players add Red Scores 1
execute as @s[team=blue] if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score Blue Scores < .endscore .stats run scoreboard players add Blue Scores 1

execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run scoreboard players add .TIME .data 16
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run scoreboard players set .time_tick .data 19

execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]

execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score Blue Scores >= .endscore .stats if score .end_countdown .data matches ..1 run function game:game/end_ctf
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num if score Red Scores >= .endscore .stats if score .end_countdown .data matches ..1 run function game:game/end_ctf

# One in the quiver
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run execute as @s store result score @s arrowCount run clear @s arrow 0

execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run scoreboard players add @s arrowCount 1
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run scoreboard players set @s[scores={arrowCount=3..}] arrowCount 3

execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run clear @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:arrow"}]}] arrow
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run item replace entity @s[scores={arrowCount=1}] hotbar.8 with minecraft:arrow
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run item replace entity @s[scores={arrowCount=2}] hotbar.8 with minecraft:arrow 2
execute if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run item replace entity @s[scores={arrowCount=3}] hotbar.8 with minecraft:arrow 3

#
xp add @s 1 levels
execute unless score .mode .data = .7 .num run stopsound @a * minecraft:entity.player.levelup

# handle kills
scoreboard players remove @s[scores={kill=1..}] kill 1

scoreboard players add .Kills .metric 1

execute unless score .mode .data = .7 .num run scoreboard players add @s track_total_kills 1
execute as @s[scores={track_total_kills=25..},tag=locked_16] run function game:player/unlock/16
execute as @s[scores={track_total_kills=50..},tag=locked_28] run function game:player/unlock/28
execute as @s[scores={track_total_kills=75..},tag=locked_62] run function game:player/unlock/62

scoreboard players add @s kills 1
scoreboard players add @s killStreak 1

execute as @s[tag=locked_60,scores={out_of_spawn_time=1..},tag=playing] if score .mode .data matches 1 if score .tmi .data matches 0 run function game:player/unlock/60

execute if score .mode .data = .6 .num as @s[team=blue] run scoreboard players add @s stats_inf_kill 1
execute if score .mode .data = .6 .num as @s[team=red] run scoreboard players add @s stats_sur_kill 1

#
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=2}] mine 224 -60 -240 air
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=3}] mine 224 -60 -242 air
#execute if score .tmi .data matches 1 run loot give @s[scores={killStreak=5}] mine 224 -60 -244 air

# set to zero on modes with no killstreak
execute if score .mode .data = .6 .num run scoreboard players set @s killStreak 0
execute if score .mode .data = .7 .num run scoreboard players set @s killStreak 0

#
execute if score .mode .data = .1 .num run clear @s[scores={kills=1}] written_book
execute if score .mode .data = .1 .num run clear @s[scores={kills=15}] written_book
execute if score .mode .data = .1 .num if score .tmi .data matches 0 run item replace entity @s[scores={kills=1}] hotbar.7 with written_book[written_book_content={title:"Items",author:"Bleps",pages:[[{"text":"How to Get Items","underlined":true},{"text":"\n\nKills\nx4 - Mini TNT\nx5 - Walls x4\nx15 - Crossbow\n","underlined":false},{"text":"\nKill Streak\n2 - Spawn Point\n3 - Traps x2\n5 - Reveal\n7 - Traps x2","underlined":false},{"text":"\n\nFlag Cap - Armor","underlined":false}]]}] 1

# kill items
execute if score .tmi .data matches 0 run give @s[scores={killStreak=2},team=blue] slime_spawn_egg[custom_model_data={strings:["3"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Spawn Point","italic":false,"color":"gray"},lore=[{"text":"Place a location to respawn at","color":"white","italic":false},{"text":"Respawn 1.5 seconds faster","color":"white","italic":false},{"text":"Can be shot","color":"white","italic":false},{"text":"Max active: 1","color":"white","italic":false},{"text":"Returned on flag capture","color":"white","italic":false}],entity_data={id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute if score .tmi .data matches 0 run give @s[scores={killStreak=2},team=red] magma_cube_spawn_egg[custom_model_data={strings:["3"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Spawn Point","italic":false,"color":"gray"},lore=[{"text":"Place a location to respawn at","color":"white","italic":false},{"text":"Respawn 1.5 seconds faster","color":"white","italic":false},{"text":"Can be shot","color":"white","italic":false},{"text":"Max active: 1","color":"white","italic":false},{"text":"Returned on flag capture","color":"white","italic":false}],entity_data={id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

execute if score .tmi .data matches 0 run give @s[scores={killStreak=3}] creeper_spawn_egg[custom_model_data={strings:["0"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Trap","italic":false,"color":"gray"},lore=[{"text":"Explodes when enemies get near","color":"white","italic":false},{"text":"Outer ring - explosion radius","color":"white","italic":false},{"text":"Inner ring - trigger radius","color":"white","italic":false},{"text":"Can be shot","color":"white","italic":false},{"text":"Max active: 12","color":"white","italic":false}],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 2
execute if score .tmi .data matches 0 run give @s[scores={killStreak=5}] map[custom_name={"text":"Reveal","italic":false,"color":"gray"},lore=[{"text":"See enemy players and placables","color":"white","italic":false},{"text":"through walls for 6 seconds","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute if score .tmi .data matches 0 run give @s[scores={killStreak=7}] creeper_spawn_egg[custom_model_data={strings:["0"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Trap","italic":false,"color":"gray"},lore=[{"text":"Explodes when enemies get near","color":"white","italic":false},{"text":"Outer ring - explosion radius","color":"white","italic":false},{"text":"Inner ring - trigger radius","color":"white","italic":false},{"text":"Can be shot","color":"white","italic":false},{"text":"Max active: 12","color":"white","italic":false}],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 2
execute if score .tmi .data matches 0 run give @s[scores={killStreak=10}] map[custom_name={"text":"Reveal","italic":false,"color":"gray"},lore=[{"text":"See enemy players and placables","color":"white","italic":false},{"text":"through walls for 6 seconds","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

execute if score .tmi .data matches 0 if score .mode .data = .1 .num as @s[scores={killStreak=3..},tag=locked_18] run function game:player/unlock/18
execute if score .tmi .data matches 0 if score .mode .data = .1 .num as @s[scores={killStreak=5..},tag=locked_65] run function game:player/unlock/65
execute if score .tmi .data matches 0 if score .mode .data = .1 .num as @s[scores={killStreak=7..},tag=locked_52] run function game:player/unlock/52

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .CrossKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] crossbow[custom_name={"text":"Crossbow (12 seconds)","italic":false,"color":"gray"},lore=[{"text":"Automatic rapid fire crossbow","color":"white","italic":false},{"text":"Keep out of range of small children","color":"white","italic":false}],enchantments={"minecraft:quick_charge":1},custom_data={trigger:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] crossbow[custom_name={"text":"Crossbow (12 seconds)","italic":false,"color":"gray"},lore=[{"text":"Automatic rapid fire crossbow","color":"white","italic":false},{"text":"Keep out of range of small children","color":"white","italic":false}],enchantments={"minecraft:quick_charge":4},custom_data={trigger:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .GrenadeKills .stats

execute if score .mode .data = .1 .num run give @s[scores={t=0}] snowball[custom_name={"text":"Mini TNT","italic":false,"color":"gray"},lore=[{"text":"Explodes, killing players","color":"white","italic":false},{"text":"Kills traps and respawns","color":"white","italic":false},{"text":"Explodes slower if thrown close","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1
execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] snowball[custom_name={"text":"Mini TNT (can't break emerald)","italic":false,"color":"gray"}] 1

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .WallKills .stats

give @s[scores={t=0}] bat_spawn_egg[custom_model_data={strings:["1"]},can_place_on=[{blocks:"#game:bolt_place"}],custom_name={"text":"Walls","color":"gray","italic":false},lore=[{"text":"Four blocks of breakable gravel","color":"white","italic":false},{"text":"Pushes players and enitites up.","color":"white","italic":false}],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1b},tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 4

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .BoostKills .stats

execute if score .mode .data = .7 .num run give @s[scores={t=0,kills=..30}] egg[custom_name={"text":"Boost","italic":false,"color":"gray"},lore=[{"text":"Explode forward","color":"white","italic":false}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model","item_name"]}] 1

#
scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .1Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -240 air[custom_data={drop_contents:1b}]

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .2Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -242 air[custom_data={drop_contents:1b}]

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .3Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -244 air[custom_data={drop_contents:1b}]

scoreboard players operation @s t = @s kills
scoreboard players operation @s t %= .4Kills .stats

execute if score .tmi .data matches 1 run loot give @s[scores={t=0}] mine 224 -60 -246 air[custom_data={drop_contents:1b}]

#
execute if score .mode .data = .7 .num run tellraw @s[scores={kills=30}] [{"text":"30 KILLS!!","color":"yellow"},{"text":" (No more items)","color":"gray"}]

# text
#execute if score .mode .data = .1 .num run tellraw @s[scores={t=0}] [{"text":"5 KILLS BONUS","color":"yellow"},{"text":" (5 Walls)","color":"gray"}]

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=3}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 3 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=5}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 5 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=7}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" 7 KILL STREAK","color":"gold"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={killStreak=10}] run tellraw @a [{"selector":"@s"},{"text":" on","color":"white"},{"text":" !10! KILL STREAK","color":"gold"}]

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=15}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 15 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=30}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 30 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=45}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 45 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=60}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 60 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=75}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 75 KILLS","color":"yellow"}]
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run execute as @s[scores={kills=90}] run tellraw @a [{"selector":"@s"},{"text":" reached","color":"white"},{"text":" 90 KILLS","color":"yellow"}]

execute as @a[scores={kill=1..}] at @s run function game:player/kill

execute store result score @s[team=red] drop_magma run clear @s slime_spawn_egg[custom_model_data={strings:["3"]}]
execute as @s[team=red,scores={drop_magma=1..}] run function game:player/give/red_spawn