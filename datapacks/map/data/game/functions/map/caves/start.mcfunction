fill -157 -61 -155 -195 -50 -89 air replace gravel

fill -193 -57 -98 -163 -46 -145 minecraft:spruce_trapdoor[facing=east,open=true] replace minecraft:spruce_trapdoor[facing=east]
fill -193 -57 -98 -163 -46 -145 minecraft:spruce_trapdoor[facing=west,open=true] replace minecraft:spruce_trapdoor[facing=west]
fill -193 -57 -98 -163 -46 -145 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor[facing=south]
fill -193 -57 -98 -163 -46 -145 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor[facing=north]

fill -173 -55 -98 -170 -59 -98 gravel replace air
fill -170 -55 -146 -173 -59 -146 gravel replace air

fill -176 -59 -137 -175 -56 -136 gravel replace air
fill -175 -59 -107 -176 -56 -108 gravel replace air

execute if score .mode .data = .1 .num run summon armor_stand -169 -60 -150 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -169 -60 -94 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -186 -54 -95 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -186 -54 -149 {Rotation:[180F,0F],Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -187 -59 -122 {Rotation:[90F,0F],Tags:["gen","long"]}