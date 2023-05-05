fill -250 -41 -409 -222 -55 -455 air replace minecraft:gravel

fill -241 -48 -431 -244 -50 -433 minecraft:gravel
fill -231 -50 -433 -235 -48 -431 gravel

execute if score .mode .data = .1 .num run summon armor_stand -241 -51 -416 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -241 -51 -448 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -227 -45 -453 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block -227 -45 -411 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if score .mode .data = .1 .num run summon marker -227 -45 -412 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -227 -45 -452 {Rotation:[180F,0F],Tags:["gen"]}

setblock -240 -50 -420 minecraft:brown_mushroom
setblock -232 -50 -428 minecraft:brown_mushroom

setblock -239 -50 -419 minecraft:dead_bush
setblock -243 -50 -426 minecraft:dead_bush
setblock -228 -50 -427 minecraft:dead_bush
setblock -226 -50 -424 minecraft:dead_bush
setblock -232 -50 -421 minecraft:dead_bush