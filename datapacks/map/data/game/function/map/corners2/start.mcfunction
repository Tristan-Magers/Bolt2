fill -251 -41 -409 -222 -55 -455 air replace minecraft:gravel
fill -251 -41 -409 -222 -55 -455 air replace minecraft:target
fill -251 -41 -409 -222 -55 -455 air replace minecraft:emerald_block

fill -241 -48 -431 -244 -50 -433 minecraft:gravel
fill -231 -50 -433 -235 -48 -431 gravel

execute if score .mode .data = .1 .num run summon armor_stand -241 -51 -416 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -241 -51 -448 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}],Tags:["redflag","flag"]}

data merge block -227 -45 -453 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -227 -45 -411 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -227 -45 -412 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -227 -45 -452 {Rotation:[180F,0F],Tags:["gen"]}

setblock -240 -50 -420 minecraft:brown_mushroom
setblock -232 -50 -428 minecraft:brown_mushroom

setblock -239 -50 -419 minecraft:dead_bush
setblock -243 -50 -426 minecraft:dead_bush
setblock -228 -50 -427 minecraft:dead_bush
setblock -226 -50 -424 minecraft:dead_bush
setblock -232 -50 -421 minecraft:dead_bush

#
setblock -244 -48 -416 minecraft:target
execute if score .mode .data = .7 .num run setblock -244 -48 -416 minecraft:air

setblock -244 -48 -448 minecraft:target
execute if score .mode .data = .7 .num run setblock -244 -48 -448 minecraft:air

#
setblock -244 -50 -448 minecraft:iron_door[hinge=left,half=lower,facing=east]
setblock -244 -49 -448 minecraft:iron_door[hinge=left,half=upper,facing=east]

setblock -244 -50 -416 minecraft:iron_door[hinge=right,half=lower,facing=east]
setblock -244 -49 -416 minecraft:iron_door[hinge=right,half=upper,facing=east]

execute if score .mode .data = .7 .num run setblock -244 -50 -448 minecraft:air
execute if score .mode .data = .7 .num run setblock -244 -49 -448 minecraft:air

execute if score .mode .data = .7 .num run setblock -244 -50 -416 minecraft:air
execute if score .mode .data = .7 .num run setblock -244 -49 -416 minecraft:air

#
execute if score .mode .data = .6 .num run function game:map/corners2/crates
execute if score .mode .data = .6 .num run execute positioned -241 -50 -416 run function game:game/infected/generator/spawn

execute if score .mode .data = .7 .num run function game:map/corners2/target

#
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill