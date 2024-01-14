scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 70
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=red] respawn 100
execute if score .mode .data = .6 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..},team=blue] respawn 10
execute if score .mode .data = .7 .num run scoreboard players set @s[scores={cutscene_time=0,cutscene=1,team_pref=0..}] respawn 20

execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg{CustomModelData:1,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:silverfish",Silent:1b,NoAI:1},HideFlags:48} 6
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] snowball{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}} 1
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg{CustomModelData:0,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},HideFlags:48} 2
#execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] panda_spawn_egg{CustomModelData:4,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Turret","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f},HideFlags:48} 1
execute if score .mode .data = .6 .num run give @s[scores={cutscene_time=0,cutscene=1},team=blue] iron_ingot{display:{Name:'{"text":"Survive one arrow hit","italic":false}'}} 1

execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.1 from block 235 -50 -224 container.10
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.2 from block 235 -50 -224 container.11
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.3 from block 235 -50 -224 container.12
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.4 from block 235 -50 -224 container.13
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.5 from block 235 -50 -224 container.14
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.6 from block 235 -50 -224 container.15
execute if score .tmi .data matches 1 run item replace entity @s[scores={cutscene_time=0,cutscene=1}] hotbar.7 from block 235 -50 -224 container.16

execute if entity @s[scores={cutscene_time=0,cutscene=1},team=red] run execute store result score @s drop_magma run clear @s panda_spawn_egg{CustomModelData:3}
execute if entity @s[scores={cutscene_time=0,cutscene=1,drop_magma=1..},team=red] run function game:player/give/red_spawn