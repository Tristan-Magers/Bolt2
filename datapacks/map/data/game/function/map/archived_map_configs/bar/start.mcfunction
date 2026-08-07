summon armor_stand -32 -59 116 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag"]}
summon armor_stand -78 -59 130 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag"]}

fill -26 -46 110 -83 -60 135 air replace gravel

summon marker -32 -55 130 {Rotation:[-90F,0F],Tags:["gen"]}
summon marker -78 -55 116 {Rotation:[90F,0F],Tags:["gen"]}