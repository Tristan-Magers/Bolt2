fill -26 -58 -347 22 -53 -253 air replace gravel
fill -26 -52 -347 22 -47 -253 air replace gravel

execute if score .mode .data = .1 .num run summon armor_stand -7 -57 -334 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand 5 -57 -266 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block 10 -53 -340 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
data merge block -12 -53 -260 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if score .mode .data = .1 .num run summon marker -12 -53 -261 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker 10 -53 -339 {Rotation:[180F,0F],Tags:["gen"]}

fill 11 -55 -312 11 -56 -311 air
fill -13 -55 -311 -13 -56 -312 air
fill 11 -55 -289 11 -56 -288 air
fill -13 -55 -288 -13 -56 -289 air

execute if score .mode .data = .6 .num run fill 11 -55 -312 11 -56 -311 stone
execute if score .mode .data = .6 .num run fill -13 -55 -311 -13 -56 -312 stone
execute if score .mode .data = .6 .num run fill 11 -55 -289 11 -56 -288 stone
execute if score .mode .data = .6 .num run fill -13 -55 -288 -13 -56 -289 stone

fill 11 -55 -312 11 -56 -311 stone
fill -13 -55 -311 -13 -56 -312 stone
fill 11 -55 -289 11 -56 -288 stone
fill -13 -55 -288 -13 -56 -289 stone