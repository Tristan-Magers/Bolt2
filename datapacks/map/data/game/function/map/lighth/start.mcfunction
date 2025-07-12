execute if score .mode .data = .1 .num run summon armor_stand -468 -41 211 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:blue_banner",count:1}},Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -424 -41 183 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,equipment:{head:{id:"minecraft:red_banner",count:1}},Tags:["redflag","flag"]}

fill -412 -40 174 -480 -36 220 air replace minecraft:gravel
fill -412 -35 174 -480 -29 220 air replace minecraft:gravel

fill -412 -40 174 -480 -36 220 air replace minecraft:target
fill -412 -35 174 -480 -29 220 air replace minecraft:target

fill -412 -40 174 -480 -36 220 air replace minecraft:emerald_block
fill -412 -35 174 -480 -29 220 air replace minecraft:emerald_block

#scoreboard players set .hexdoor1 .timer 1
#scoreboard players set .hexdoor2 .timer 1

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -474 -40 194 {Rotation:[90F,0F],Tags:["gen"]}
execute if score .tmi .data matches 0 if score .mode .data = .1 .num run summon marker -418 -40 200 {Rotation:[-90F,0F],Tags:["gen"]}

data merge block -475 -40 194 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}
data merge block -417 -40 200 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}

#
execute if score .mode .data = .6 .num run function game:map/lighth/crates
execute if score .mode .data = .6 .num run execute positioned -468 -40 211 run function game:game/infected/generator/spawn

#
execute if score .mode .data = .7 .num run function game:map/lighth/target

#
execute if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tag @e[tag=flag] add kill

#
setblock -445 -35 215 minecraft:fern
setblock -447 -35 179 minecraft:short_grass
setblock -440 -36 176 minecraft:fern
setblock -433 -37 174 minecraft:small_dripleaf
setblock -427 -38 174 minecraft:short_grass
setblock -431 -40 178 minecraft:short_grass
setblock -430 -40 179 minecraft:fern
setblock -452 -36 218 minecraft:short_grass
setblock -459 -37 220 minecraft:small_dripleaf
setblock -470 -38 219 minecraft:fern
setblock -469 -38 220 minecraft:short_grass
setblock -462 -40 216 minecraft:short_grass

setblock -466 -40 206 minecraft:nether_sprouts
setblock -464 -40 208 minecraft:nether_sprouts

# red base
setblock -420 -31 203 minecraft:waxed_copper_trapdoor[half=top,open=true,facing=west]

setblock -409 -33 200 minecraft:dark_oak_fence_gate[open=true]
setblock -412 -33 200 minecraft:dark_oak_fence_gate[open=true]
setblock -415 -33 200 minecraft:dark_oak_fence_gate[open=true]
setblock -418 -33 200 minecraft:dark_oak_fence_gate[open=true]

setblock -410 -33 206 minecraft:dark_oak_fence_gate[open=true,facing=south]
setblock -413 -33 206 minecraft:dark_oak_fence_gate[open=true,facing=south]
setblock -416 -33 206 minecraft:dark_oak_fence_gate[open=true,facing=south]

# mid
fill -449 -26 190 -449 -27 194 minecraft:oak_trapdoor[half=top,facing=west]
fill -443 -26 194 -443 -27 190 minecraft:oak_trapdoor[half=top,facing=east]

# blue base
fill -478 -36 189 -478 -36 194 minecraft:spruce_trapdoor[half=top,open=true,facing=west]
fill -479 -37 188 -475 -37 188 minecraft:spruce_trapdoor[facing=south,half=top]

#
setblock -477 -33 206 minecraft:dark_oak_trapdoor[half=top,facing=east,open=true]
setblock -477 -33 209 minecraft:dark_oak_trapdoor[half=top,facing=east,open=true]
setblock -477 -33 212 minecraft:dark_oak_trapdoor[half=top,facing=east,open=true]