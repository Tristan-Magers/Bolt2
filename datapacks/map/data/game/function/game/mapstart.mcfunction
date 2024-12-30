kill @e[tag=gen]
kill @e[type=item]
kill @e[type=minecraft:zombie_villager]

kill @e[type=pig,tag=!chair]
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

kill @e[tag=grenadehit]

kill @e[type=minecraft:area_effect_cloud]

kill @e[tag=redflag]
kill @e[tag=blueflag]

kill @e[tag=target_marker]

execute if score .map .data = .1 .num run function game:map/towers/start
execute if score .map .data = .2 .num run function game:map/caves/start
execute if score .map .data = .3 .num run function game:map/divide/start
execute if score .map .data = .4 .num run function game:map/corners/start
execute if score .map .data = .5 .num run function game:map/hex/start
execute if score .map .data = .6 .num run function game:map/valley/start
execute if score .map .data = .7 .num run function game:map/dream/start
execute if score .map .data = .8 .num run function game:map/bar/start
execute if score .map .data = .9 .num run function game:map/basin/start
execute if score .map .data = .10 .num run function game:map/corners2/start
execute if score .map .data = .11 .num run function game:map/sidelines/start
execute if score .map .data = .12 .num run function game:map/garden/start
execute if score .map .data = .13 .num run function game:map/lookout/start
execute if score .map .data = .14 .num run function game:map/river/start
execute if score .map .data = .15 .num run function game:map/lighth/start

execute if score .map .data = .10 .num run tag @a[tag=playing] add play_map_tinyt
execute if score .map .data = .3 .num run tag @a[tag=playing] add play_map_divide
execute if score .map .data = .5 .num run tag @a[tag=playing] add play_map_hex
execute if score .map .data = .2 .num run tag @a[tag=playing] add play_map_coves
execute if score .map .data = .1 .num run tag @a[tag=playing] add play_map_towers
execute if score .map .data = .15 .num run tag @a[tag=playing] add play_map_lighth
execute if score .map .data = .12 .num run tag @a[tag=playing] add play_map_garden
execute if score .map .data = .6 .num run tag @a[tag=playing] add play_map_valley
execute if score .map .data = .14 .num run tag @a[tag=playing] add play_map_river

execute as @a[tag=locked_73,tag=play_map_tinyt,tag=play_map_divide,tag=play_map_hex,tag=play_map_coves,tag=play_map_towers,tag=play_map_lighth,tag=play_map_garden,tag=play_map_valley,tag=play_map_river] run function game:player/unlock/73

tag @a remove hasflag
tag @a remove hasspawn

gamerule reducedDebugInfo true