kill @e[tag=gen]
kill @e[type=item]
kill @e[type=minecraft:zombie_villager]

kill @e[type=pig,tag=!chair,tag=!ballon]
kill @e[tag=turret_head]
kill @e[tag=turret_stand]
kill @e[tag=turretPunch]

kill @e[type=minecraft:creeper]
kill @e[type=minecraft:slime]
kill @e[type=minecraft:magma_cube]
kill @e[tag=wall]
kill @e[tag=spawn_tracker]
kill @e[tag=crate_marker]
execute as @e[tag=crate] at @s run function game:game/infected/crates/despawn
kill @e[type=block_display,tag=survivor_generator_dis]
execute as @e[tag=survivor_generator] at @s run function game:game/infected/generator/despawn

execute as @e[type=marker,tag=!map_editor,tag=gate] at @s run function game:gate/stop
kill @e[type=marker,tag=!map_editor,tag=gate]

kill @e[tag=grenadehit]

kill @e[type=minecraft:area_effect_cloud]

kill @e[tag=redflag]
kill @e[tag=blueflag]

kill @e[tag=target_marker]

execute if data storage maps:active settings.disabledItems[0] run tellraw @a [{text:"NOTICE!",color:"#8F2929",bold:true},{text:" Walls item disabled on map.",bold:false}]

execute if score .mode .data = .6 .num run function game:game/infected/generator/spawn_macro with storage maps:active objectives
function game:map/flags with storage maps:active objectives
function game:map/clear_map with storage maps:active settings.mapSize

# get number of generators and place them
# This got moved to intro.mcfunction. Don't ask.
#execute store result score generatorCount macro_counter run data get storage maps:active gens
#scoreboard players set generatorCounter macro_counter 0
#function game:map/item_generator with storage maps:active gens[0]

# runs load script for the map, do this after spawning in everything else
function game:map/load_script1 with storage maps:active

execute if score .mode .data = .6 .num store result score crateCount macro_counter run data get storage maps:active crates
execute if score .mode .data = .6 .num run scoreboard players set crateCounter macro_counter 0
execute if score .mode .data = .6 .num run function game:map/spawn_crate_markers with storage maps:active crates[0]

execute if score .mode .data = .7 .num store result score targetCount macro_counter run data get storage maps:active targets
execute if score .mode .data = .7 .num run scoreboard players set targetCounter macro_counter 0
execute if score .mode .data = .7 .num run function game:map/spawn_target_markers with storage maps:active targets[0]

data modify storage macro tmp_gates set from storage maps:active gates
function game:map/spawn_gate_markers with storage macro tmp_gates[-1]
data remove storage macro tmp_gates


#execute if score .map .data = .1 .num run function game:map/towers/start
#execute if score .map .data = .2 .num run function game:map/caves/start
#execute if score .map .data = .3 .num run function game:map/divide/start
#execute if score .map .data = .4 .num run function game:map/corners/start
#execute if score .map .data = .5 .num run function game:map/hex/start
#execute if score .map .data = .6 .num run function game:map/valley/start
#execute if score .map .data = .7 .num run function game:map/dream/start
#execute if score .map .data = .8 .num run function game:map/bar/start
#execute if score .map .data = .9 .num run function game:map/basin/start
#execute if score .map .data = .10 .num run function game:map/corners2/start
#execute if score .map .data = .11 .num run function game:map/sidelines/start
#execute if score .map .data = .12 .num run function game:map/garden/start
#execute if score .map .data = .13 .num run function game:map/lookout/start
#execute if score .map .data = .14 .num run function game:map/river/start
#execute if score .map .data = .15 .num run function game:map/lighth/start

execute if data storage maps:active {mapName:"Tiny Town"} run tag @a[tag=playing] add play_map_tinyt
execute if data storage maps:active {mapName:"Divide"} run tag @a[tag=playing] add play_map_divide
execute if data storage maps:active {mapName:"Hex"} run tag @a[tag=playing] add play_map_hex
execute if data storage maps:active {mapName:"Coves"} run tag @a[tag=playing] add play_map_coves
execute if data storage maps:active {mapName:"Towers"} run tag @a[tag=playing] add play_map_towers
execute if data storage maps:active {mapName:"Lighthouse"} run tag @a[tag=playing] add play_map_lighth
execute if data storage maps:active {mapName:"Garden"} run tag @a[tag=playing] add play_map_garden
execute if data storage maps:active {mapName:"Valley"} run tag @a[tag=playing] add play_map_valley
execute if data storage maps:active {mapName:"River"} run tag @a[tag=playing] add play_map_river
execute if data storage maps:active {mapName:"Camp"} run tag @a[tag=playing] add play_map_camp
execute if data storage maps:active {mapName:"Mall"} run tag @a[tag=playing] add play_map_mall

execute as @a[tag=locked_73,tag=play_map_tinyt,tag=play_map_divide,tag=play_map_hex,tag=play_map_coves,tag=play_map_towers,tag=play_map_lighth,tag=play_map_garden,tag=play_map_valley,tag=play_map_river,tag=play_map_camp,tag=play_map_mall] run function game:player/unlock/73

tag @a remove hasflag
tag @a remove hasspawn

gamerule reduced_debug_info true

# run game
scoreboard players set .gamestate .data 50