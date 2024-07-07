execute if score .mode .data = .1 .num run summon armor_stand -468 -41 211 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -424 -41 183 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}],Tags:["redflag","flag"]}

fill -412 -40 174 -480 -36 220 air replace minecraft:gravel
fill -412 -35 174 -480 -29 220 air replace minecraft:gravel

fill -412 -40 174 -480 -36 220 air replace minecraft:target
fill -412 -35 174 -480 -29 220 air replace minecraft:target

fill -412 -40 174 -480 -36 220 air replace minecraft:emerald_block
fill -412 -35 174 -480 -29 220 air replace minecraft:emerald_block

#scoreboard players set .hexdoor1 .timer 1
#scoreboard players set .hexdoor2 .timer 1

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -474 -40 194 {Rotation:[90F,0F],Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -418 -40 200 {Rotation:[-90F,0F],Tags:["gen"]}

data merge block -475 -40 194 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -417 -40 200 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

#
execute if score .mode .data = .6 .num run function game:map/lighth/crates
execute if score .mode .data = .6 .num run execute positioned -468 -40 211 run function game:game/infected/generator/spawn

#
execute if score .mode .data = .7 .num run function game:map/lighth/target

#
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill