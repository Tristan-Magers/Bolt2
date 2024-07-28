fill -436 -60 -30 -384 -55 67 air replace gravel
fill -436 -54 -30 -384 -49 67 air replace gravel
fill -436 -48 -30 -384 -43 67 air replace gravel
fill -436 -42 -30 -384 -37 67 air replace gravel
fill -436 -36 -30 -384 -31 67 air replace gravel

fill -436 -60 -30 -384 -55 67 air replace target
fill -436 -54 -30 -384 -49 67 air replace target
fill -436 -48 -30 -384 -43 67 air replace target
fill -436 -42 -30 -384 -37 67 air replace target
fill -436 -36 -30 -384 -31 67 air replace target

fill -436 -60 -30 -384 -55 67 air replace emerald_block
fill -436 -54 -30 -384 -49 67 air replace emerald_block
fill -436 -48 -30 -384 -43 67 air replace emerald_block
fill -436 -42 -30 -384 -37 67 air replace emerald_block
fill -436 -36 -30 -384 -31 67 air replace emerald_block

execute if score .mode .data = .1 .num run summon armor_stand -419 -52 -14 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -419 -52 46 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}],Tags:["redflag","flag"]}

data merge block -398 -49 58 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -398 -49 -26 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -398 -49 57 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -398 -49 -25 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run function game:map/valley/crates

execute if score .mode .data = .6 .num run execute positioned -419 -51 -14 run function game:game/infected/generator/spawn

fill -432 -49 -21 -430 -49 -21 minecraft:waxed_weathered_copper_trapdoor[open=true,facing=south]
fill -432 -49 53 -430 -49 53 minecraft:waxed_exposed_copper_trapdoor[open=true,facing=north]

#
fill -414 -49 54 -414 -47 52 minecraft:spruce_fence
fill -414 -49 -20 -414 -47 -22 minecraft:spruce_fence

#
execute if score .mode .data = .7 .num run function game:map/valley/target

scoreboard players set .valley_door_blue .timer 0
scoreboard players set .valley_door_red .timer 0

#
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill