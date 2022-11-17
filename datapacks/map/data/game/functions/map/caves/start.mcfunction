fill -125 -61 -12 -163 -50 54 air replace gravel

fill -161 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=east,open=true] replace minecraft:spruce_trapdoor[facing=east]
fill -161 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=west,open=true] replace minecraft:spruce_trapdoor[facing=west]
fill -161 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor[facing=south]
fill -161 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor[facing=north]

fill -141 -55 45 -138 -59 45 gravel replace air
fill -138 -55 -3 -141 -59 -3 gravel replace air

fill -144 -59 6 -143 -56 7 gravel replace air
fill -143 -59 36 -144 -56 35 gravel replace air

execute if score .mode .data = .1 .num run summon armor_stand -137 -60 -7 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -137 -60 49 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

execute if score .mode .data = .1 .num run summon marker -154 -54 48 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -154 -54 -6 {Rotation:[180F,0F],Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -155 -59 21 {Rotation:[90F,0F],Tags:["gen","long"]}