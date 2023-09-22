fill 4 -29 209 -82 -34 263 air replace gravel
fill 4 -35 209 -82 -40 263 air replace gravel
fill 4 -41 209 -82 -46 263 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -60 -37 238 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -20 -37 238 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -78 -34 241 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -2 -34 241 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -40 -35 230 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .mode .data = .1 .num run summon marker -77 -34 241 {Rotation:[90F,0F],Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -3 -34 241 {Rotation:[-90F,0F],Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -40 -35 231 {Rotation:[180F,0F],Tags:["gen","long"]}