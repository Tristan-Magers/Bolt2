fill -435 -60 -30 -381 -55 67 air replace gravel
fill -435 -54 -30 -381 -49 67 air replace gravel
fill -435 -48 -30 -381 -43 67 air replace gravel
fill -435 -42 -30 -381 -37 67 air replace gravel
fill -435 -36 -30 -381 -31 67 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -419 -50 -14 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -419 -50 46 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -398 -49 58 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block -398 -49 -26 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if score .mode .data = .1 .num run summon marker -398 -49 57 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -398 -49 -25 {Rotation:[180F,0F],Tags:["gen"]}