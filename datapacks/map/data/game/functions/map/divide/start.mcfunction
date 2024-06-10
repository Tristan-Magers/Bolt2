fill -192 -60 40 -230 -50 -14 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -211 -57 30 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",count:1}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -211 -57 -4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",count:1}],Tags:["redflag","flag"]}

data merge block -209 -53 -10 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -213 -53 36 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -213 -53 35 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -209 -53 -9 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run execute positioned -211 -56 30 run function game:game/infected/generator/spawn
execute if score .mode .data = .6 .num run function game:map/divide/crates