fill -435 -60 -30 -381 -55 67 air replace gravel
fill -435 -54 -30 -381 -49 67 air replace gravel
fill -435 -48 -30 -381 -43 67 air replace gravel
fill -435 -42 -30 -381 -37 67 air replace gravel
fill -435 -36 -30 -381 -31 67 air replace gravel

fill -435 -60 -30 -381 -55 67 air replace target
fill -435 -54 -30 -381 -49 67 air replace target
fill -435 -48 -30 -381 -43 67 air replace target
fill -435 -42 -30 -381 -37 67 air replace target
fill -435 -36 -30 -381 -31 67 air replace target

fill -435 -60 -30 -381 -55 67 air replace emerald_block
fill -435 -54 -30 -381 -49 67 air replace emerald_block
fill -435 -48 -30 -381 -43 67 air replace emerald_block
fill -435 -42 -30 -381 -37 67 air replace emerald_block
fill -435 -36 -30 -381 -31 67 air replace emerald_block

execute if score .mode .data = .1 .num run summon armor_stand -419 -52 -14 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -419 -52 46 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

data merge block -398 -49 58 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}
data merge block -398 -49 -26 {front_text:{messages:['{"text":" ","color":"black"}','{"text":""}','{"text":""}','{"text":""}']}}

execute if score .mode .data = .1 .num run summon marker -398 -49 57 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -398 -49 -25 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .6 .num run function game:map/valley/crates

execute if score .mode .data = .6 .num run execute positioned -419 -49 -14 run function game:game/infected/generator/spawn