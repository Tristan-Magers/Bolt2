execute if score .mode .data = .1 .num run summon armor_stand -351 -55 -91 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -330 -55 -53 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

fill -355 -40 -95 -326 -60 -49 air replace minecraft:gravel

fill -354 -50 -94 -327 -60 -50 air replace minecraft:target
fill -354 -50 -94 -327 -60 -50 air replace minecraft:emerald_block

#scoreboard players set .hexdoor1 .timer 1
#scoreboard players set .hexdoor2 .timer 1

execute if score .mode .data = .1 .num run summon marker -347 -55 -57 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -334 -55 -87 {Rotation:[180F,0F],Tags:["gen"]}