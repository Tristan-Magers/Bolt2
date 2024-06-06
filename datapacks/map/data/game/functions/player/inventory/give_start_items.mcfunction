scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 70
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=red] respawn 100
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=blue] respawn 10
execute if score .mode .data = .7 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 20

execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 6
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}'] 1
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Trap","italic":false,"color":"gray"}',entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 2
#execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg{custom_model_data=4,can_place_on={predicates:[{blocks:"#game:bolt_place"}]},custom_name='{"text":"Turret","italic":false,"color":"gray"}'},entity_data={id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f}} 1
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 1

execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.1 from block 235 -50 -224 container.10
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.2 from block 235 -50 -224 container.11
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.3 from block 235 -50 -224 container.12
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.4 from block 235 -50 -224 container.13
#execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.5 from block 235 -50 -224 container.14
#execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.6 from block 235 -50 -224 container.15
#execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.7 from block 235 -50 -224 container.16

execute if entity @s[scores={cutscene_time=0,cutscene=1},team=red] run execute store result score @s drop_magma run clear @s panda_spawn_egg{custom_model_data=3}
execute if entity @s[scores={cutscene_time=0,cutscene=1,drop_magma=1..},team=red] run function game:player/give/red_spawn