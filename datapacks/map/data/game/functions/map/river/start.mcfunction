fill -540 -22 -349 -475 -13 -301 air replace gravel
fill -540 -22 -300 -475 -13 -252 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -530 -18 -335 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -486 -18 -271 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -521 -19 -267 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -495 -19 -339 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -521 -19 -268 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -495 -19 -338 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run execute positioned -530 -17 -335 run function game:game/infected/generator/spawn
execute if score .mode .data = .6 .num run function game:map/river/crates