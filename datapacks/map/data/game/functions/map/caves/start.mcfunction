fill -130 -59 -12 -160 -50 54 air replace gravel

fill -151 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=east,open=true] replace minecraft:spruce_trapdoor[facing=east]
fill -151 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=west,open=true] replace minecraft:spruce_trapdoor[facing=west]
fill -151 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor[facing=south]
fill -151 -57 45 -131 -46 -2 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor[facing=north]

fill -141 -55 45 -138 -59 45 gravel replace air
fill -138 -55 -3 -141 -59 -3 gravel replace air

fill -144 -59 6 -143 -56 7 gravel replace air
fill -143 -59 36 -144 -56 35 gravel replace air

summon armor_stand -137 -60 -7 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
summon armor_stand -137 -60 49 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}
