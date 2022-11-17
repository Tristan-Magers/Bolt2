fill -192 -60 40 -230 -50 -14 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -211 -57 30 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -211 -57 -4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -209 -53 -10 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block -213 -53 36 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if score .mode .data = .1 .num run summon marker -213 -53 35 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -209 -53 -9 {Rotation:[180F,0F],Tags:["gen"]}