fill -26 -58 -347 22 -53 -253 air replace gravel
fill -26 -52 -347 22 -47 -253 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -7 -57 -334 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand 5 -57 -266 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}],Tags:["redflag","flag"]}

data merge block 10 -53 -340 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -12 -53 -260 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -12 -53 -261 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker 10 -53 -339 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run execute positioned -7 -56 -334 run function game:game/infected/generator/spawn
execute if score .mode .data = .6 .num run function game:map/garden/crates

setblock -11 -56 -336 minecraft:short_grass
setblock -8 -56 -330 minecraft:short_grass
setblock 17 -52 -315 minecraft:short_grass
setblock 6 -56 -270 minecraft:short_grass
setblock 9 -56 -263 minecraft:short_grass
setblock -2 -56 -319 minecraft:blue_orchid
setblock -2 -56 -321 minecraft:blue_orchid
setblock -1 -56 -320 minecraft:cornflower
setblock -3 -56 -320 minecraft:cornflower
setblock -10 -56 -314 minecraft:blue_orchid
setblock -7 -56 -307 minecraft:blue_orchid
setblock -9 -56 -307 minecraft:short_grass
setblock -11 -56 -309 minecraft:short_grass
setblock 6 -56 -311 minecraft:cornflower
setblock 5 -56 -293 minecraft:poppy
setblock 8 -56 -286 minecraft:poppy
setblock 9 -56 -291 minecraft:short_grass
setblock 7 -56 -293 minecraft:short_grass
setblock -8 -56 -289 minecraft:poppy
setblock 1 -56 -280 minecraft:poppy
setblock 0 -56 -281 minecraft:red_tulip
setblock -1 -56 -280 minecraft:poppy
setblock 0 -56 -279 minecraft:red_tulip
setblock -15 -55 -274 minecraft:poppy
setblock -17 -55 -274 minecraft:poppy
setblock -16 -55 -273 minecraft:red_tulip
setblock -16 -55 -275 minecraft:red_tulip
setblock 14 -55 -327 minecraft:blue_orchid
setblock 14 -55 -325 minecraft:blue_orchid
setblock 15 -55 -326 minecraft:cornflower
setblock 13 -55 -326 minecraft:cornflower
setblock 17 -52 -315 minecraft:short_grass
setblock 14 -49 -297 minecraft:short_grass
setblock 16 -48 -299 minecraft:short_grass
setblock 15 -49 -304 minecraft:short_grass
setblock 17 -49 -308 minecraft:short_grass
setblock -18 -48 -301 minecraft:short_grass
setblock -16 -49 -303 minecraft:short_grass
setblock -17 -49 -296 minecraft:short_grass
setblock -19 -49 -292 minecraft:short_grass

#
setblock -11 -50 -300 minecraft:redstone_lamp[lit=true]
setblock -9 -52 -290 minecraft:redstone_lamp[lit=true]
setblock 9 -50 -300 minecraft:redstone_lamp[lit=true]
setblock 7 -52 -310 minecraft:redstone_lamp[lit=true]