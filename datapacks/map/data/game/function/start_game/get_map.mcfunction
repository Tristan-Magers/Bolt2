#this file should run when gamestate is at 10

# mostly start2 stuff
scoreboard players operation .map .data = .map_screen .data
scoreboard players operation .mode .data = .mode_screen .data
scoreboard players set .tmi .data 0

execute if score .mode_screen .data matches 1 run tag @s add play_ctf
execute if score .mode_screen .data matches 5 run tag @s add play_tmi
execute if score .mode_screen .data matches 6 run tag @s add play_inf
execute if score .mode_screen .data matches 7 run tag @s add play_tar

scoreboard players set .tmi .data 0

execute if score .mode_screen .data matches 5 run scoreboard players set .tmi .data 1
execute if score .mode_screen .data matches 5 run scoreboard players set .mode .data 1

function game:game/next_id

# custom random is always map ID 0
# clear, then populate maps:active
execute if score .map .data matches 0 run function game:game/random_map
execute unless score .map .data matches 0 store result storage macro mapID int 1 run scoreboard players get .map .data
execute unless score .map .data matches 0 run function game:map/map_from_id with storage macro

# REWORK - this is part of making shuba's system and aiden's system play nicely together. This can be handled more gracefully.
execute unless data storage maps:active origin run data modify storage maps:active origin set value "0 0 0"
function game:map/summon_origin_entity with storage maps:active

# this could be refactored, this is storing the number of bounding boxes for each spawn, for later use (ie., if there are two, we will run the macro twice)
execute store result score .blue_spawn_box macro_counter run data get storage maps:active spawn.blueSpawnBoundingBox
execute store result score .red_spawn_box macro_counter run data get storage maps:active spawn.redSpawnBoundingBox

# just some map settings that are stored in scoreboards.
execute store result score .map_setting invul run data get storage maps:active spawn.ctfInvulnTime
execute if score .mode .data matches 6 store result score .map_setting invul run data get storage maps:active spawn.infectionInvulnTime




# misc commands, might not be correct... Probably need some exclusions on this.
stopsound @a
gamemode adventure @a
kill @e[tag=head]
kill @e[tag=cutscene]
tag @a remove lobby

# yeah.... probably shouldn't be here
title @a times 0 20 0
title @a title {"translate":"\u0001","font":"title"}




# debug info
tellraw @a[tag=verbose] [{text:"Loading Map from config:\n Gamestate: ",color:"gray"},{"score":{name:".gamestate",objective:".data"}},{text:", Expected Gamestate: 10,\n MapID: "},{score:{name:".map",objective:".data"}},{text:",\n "},\
    {text:"[Map Settings], ", hover_event:{action:"show_text",value:{storage:"maps:active",nbt:"settings"}}},\
    {text:"[Spawns], ", hover_event:{action:"show_text",value:{storage:"maps:active",nbt:"spawn"}}},\
    {text:"[Objectives], ", hover_event:{action:"show_text",value:{storage:"maps:active",nbt:"objectives"}}},\
    {text:"[Generators]", hover_event:{action:"show_text",value:{storage:"maps:active",nbt:"gens"}}},\
    ]





# set gamestate to 15, which will teleport everyone to the load box.
scoreboard players set .chunkload_time .timer 0
scoreboard players set .gamestate .data 15
