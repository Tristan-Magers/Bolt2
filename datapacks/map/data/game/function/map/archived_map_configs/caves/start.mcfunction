fill -157 -55 -158 -195 -50 -86 air replace target
fill -157 -55 -158 -195 -50 -86 air replace emerald_block

fill -157 -61 -158 -195 -56 -86 air replace target
fill -157 -61 -158 -195 -56 -86 air replace emerald_block

fill -157 -55 -158 -195 -50 -86 air replace gravel
fill -157 -61 -158 -195 -56 -86 air replace gravel

setblock -192 -55 -134 minecraft:warped_trapdoor[open=true,facing=south]
setblock -192 -55 -136 minecraft:warped_trapdoor[open=true,facing=north]
setblock -191 -55 -135 minecraft:warped_trapdoor[open=true,facing=east]

setblock -168 -55 -140 minecraft:warped_trapdoor[open=true,facing=south]
setblock -168 -55 -142 minecraft:warped_trapdoor[open=true,facing=north]
setblock -167 -55 -141 minecraft:warped_trapdoor[open=true,facing=east]
setblock -169 -55 -141 minecraft:warped_trapdoor[open=true,facing=west]

setblock -168 -55 -104 minecraft:crimson_trapdoor[open=true,facing=north]
setblock -168 -55 -102 minecraft:crimson_trapdoor[open=true,facing=south]
setblock -169 -55 -103 minecraft:crimson_trapdoor[open=true,facing=west]
setblock -167 -55 -103 minecraft:crimson_trapdoor[open=true,facing=east]

setblock -191 -55 -109 minecraft:crimson_trapdoor[open=true,facing=east]
setblock -192 -55 -108 minecraft:crimson_trapdoor[open=true,facing=south]
setblock -192 -55 -110 minecraft:crimson_trapdoor[open=true,facing=north]

setblock -166 -52 -86 minecraft:hanging_roots
setblock -165 -52 -87 minecraft:hanging_roots
setblock -170 -51 -87 minecraft:hanging_roots
setblock -163 -50 -96 minecraft:hanging_roots

setblock -163 -50 -148 minecraft:hanging_roots
setblock -165 -52 -157 minecraft:hanging_roots
setblock -166 -52 -158 minecraft:hanging_roots
setblock -170 -51 -157 minecraft:hanging_roots


# load script
fill -173 -55 -98 -170 -59 -98 gravel replace air
fill -170 -55 -146 -173 -59 -146 gravel replace air

fill -176 -59 -137 -175 -56 -136 gravel replace air
fill -175 -59 -107 -176 -56 -108 gravel replace air
# load script

execute if score .mode .data = .1 .num run summon armor_stand -169 -60 -150 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -169 -60 -94 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag"]}

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -186 -54 -95 {Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -186 -54 -149 {Rotation:[180F,0F],Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -187 -59 -122 {Rotation:[90F,0F],Tags:["gen","long"]}

data merge block -188 -59 -122 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}
data merge block -186 -54 -150 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}
data merge block -186 -54 -94 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}

#
execute if score .mode .data = .6 .num run function game:map/caves/crates
execute if score .mode .data = .6 .num run execute positioned -169 -59 -150 run function game:game/infected/generator/spawn

#
execute if score .mode .data = .7 .num run function game:map/caves/target

#
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill