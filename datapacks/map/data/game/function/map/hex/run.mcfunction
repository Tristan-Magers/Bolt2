#door 1
execute if score .hexdoor1 .timer < .n5 .num if block -274 -57 35 minecraft:birch_button[face=wall,facing=south,powered=true] run scoreboard players set .hexdoor1 .timer 110
execute if block -274 -57 35 minecraft:birch_button[face=wall,facing=south,powered=true] run setblock -274 -57 35 minecraft:birch_button[face=wall,facing=south]
execute if score .hexdoor1 .timer < .n5 .num if block -277 -57 35 minecraft:birch_button[face=wall,facing=south,powered=true] run scoreboard players set .hexdoor1 .timer 110
execute if block -277 -57 35 minecraft:birch_button[face=wall,facing=south,powered=true] run setblock -277 -57 35 minecraft:birch_button[face=wall,facing=south]
execute if score .hexdoor1 .timer < .n5 .num if block -274 -57 33 minecraft:birch_button[face=wall,powered=true] run scoreboard players set .hexdoor1 .timer 110
execute if block -274 -57 33 minecraft:birch_button[face=wall,powered=true] run setblock -274 -57 33 minecraft:birch_button[face=wall,facing=north]
execute if score .hexdoor1 .timer < .n5 .num if block -277 -57 33 minecraft:birch_button[face=wall,powered=true] run scoreboard players set .hexdoor1 .timer 110
execute if block -277 -57 33 minecraft:birch_button[face=wall,powered=true] run setblock -277 -57 33 minecraft:birch_button[face=wall,facing=north]

execute if score .hexdoor1 .timer = .110 .num run playsound minecraft:block.piston.contract master @a -275.5 -57 33.5 0.4 1.5 0.05
execute if score .hexdoor1 .timer = .105 .num run fill -276 -59 34 -275 -59 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .100 .num run fill -276 -56 34 -275 -58 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .100 .num run fill -275 -59 34 -276 -59 34 air replace
execute if score .hexdoor1 .timer = .95 .num run fill -276 -58 34 -275 -58 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .90 .num run fill -276 -56 34 -275 -57 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .90 .num run fill -275 -58 34 -276 -58 34 air replace
execute if score .hexdoor1 .timer = .85 .num run fill -276 -57 34 -275 -57 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .80 .num run fill -276 -56 34 -275 -56 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .80 .num run fill -275 -57 34 -276 -57 34 air replace
execute if score .hexdoor1 .timer = .75 .num run fill -276 -56 34 -275 -56 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .70 .num run fill -275 -56 34 -276 -56 34 air replace
execute if score .hexdoor1 .timer = .70 .num run playsound minecraft:block.piston.contract master @a -275.5 -57 33.5 0.4 1.8 0.05
execute if score .hexdoor1 .timer = .30 .num run fill -276 -56 34 -275 -56 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .30 .num run playsound minecraft:block.piston.extend master @a -275.5 -57 33.5 0.4 1.2 0.05
execute if score .hexdoor1 .timer = .25 .num run fill -276 -56 34 -275 -56 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .20 .num run fill -276 -57 34 -275 -57 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .15 .num run fill -276 -56 34 -275 -57 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .10 .num run fill -276 -58 34 -275 -58 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .5 .num run fill -276 -56 34 -275 -58 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .0 .num run fill -276 -56 34 -275 -58 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .0 .num run fill -275 -59 34 -276 -59 34 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor1 .timer = .n5 .num run fill -275 -59 34 -276 -59 34 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor1 .timer = .n4 .num run playsound minecraft:block.piston.extend master @a -275.5 -57 33.5 0.4 1.0 0.05

#door 2
execute if score .hexdoor2 .timer < .n5 .num if block -256 -57 25 minecraft:birch_button[face=wall,facing=north,powered=true] run scoreboard players set .hexdoor2 .timer 110
execute if block -256 -57 25 minecraft:birch_button[face=wall,facing=north,powered=true] run setblock -256 -57 25 minecraft:birch_button[face=wall,facing=north]
execute if score .hexdoor2 .timer < .n5 .num if block -259 -57 25 minecraft:birch_button[face=wall,facing=north,powered=true] run scoreboard players set .hexdoor2 .timer 110
execute if block -259 -57 25 minecraft:birch_button[face=wall,facing=north,powered=true] run setblock -259 -57 25 minecraft:birch_button[face=wall,facing=north]
execute if score .hexdoor2 .timer < .n5 .num if block -256 -57 27 minecraft:birch_button[face=wall,facing=south,powered=true] run scoreboard players set .hexdoor2 .timer 110
execute if block -256 -57 27 minecraft:birch_button[face=wall,facing=south,powered=true] run setblock -256 -57 27 minecraft:birch_button[face=wall,facing=south]
execute if score .hexdoor2 .timer < .n5 .num if block -259 -57 27 minecraft:birch_button[face=wall,facing=south,powered=true] run scoreboard players set .hexdoor2 .timer 110
execute if block -259 -57 27 minecraft:birch_button[face=wall,facing=south,powered=true] run setblock -259 -57 27 minecraft:birch_button[face=wall,facing=south]

execute if score .hexdoor2 .timer = .110 .num run playsound minecraft:block.piston.contract master @a -257.5 -57 25.5 0.4 1.5 0.05
execute if score .hexdoor2 .timer = .105 .num run fill -258 -59 26 -257 -59 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .100 .num run fill -258 -56 26 -257 -58 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .100 .num run fill -257 -59 26 -258 -59 26 air replace
execute if score .hexdoor2 .timer = .95 .num run fill -258 -58 26 -257 -58 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .90 .num run fill -258 -56 26 -257 -57 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .90 .num run fill -257 -58 26 -258 -58 26 air replace
execute if score .hexdoor2 .timer = .85 .num run fill -258 -57 26 -257 -57 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .80 .num run fill -258 -56 26 -257 -56 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .80 .num run fill -257 -57 26 -258 -57 26 air replace
execute if score .hexdoor2 .timer = .75 .num run fill -258 -56 26 -257 -56 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .70 .num run fill -257 -56 26 -258 -56 26 air replace
execute if score .hexdoor2 .timer = .70 .num run playsound minecraft:block.piston.contract master @a -257.5 -57 25.5 0.4 1.8 0.05
execute if score .hexdoor2 .timer = .30 .num run fill -258 -56 26 -257 -56 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .30 .num run playsound minecraft:block.piston.extend master @a -257.5 -57 25.5 0.4 1.2 0.05
execute if score .hexdoor2 .timer = .25 .num run fill -258 -56 26 -257 -56 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .20 .num run fill -258 -57 26 -257 -57 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .15 .num run fill -258 -56 26 -257 -57 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .10 .num run fill -258 -58 26 -257 -58 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .5 .num run fill -258 -56 26 -257 -58 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .0 .num run fill -258 -56 26 -257 -58 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .0 .num run fill -257 -59 26 -258 -59 26 minecraft:smooth_stone_slab[type=top] replace
execute if score .hexdoor2 .timer = .n5 .num run fill -257 -59 26 -258 -59 26 minecraft:smooth_stone_slab[type=double] replace
execute if score .hexdoor2 .timer = .n4 .num run playsound minecraft:block.piston.extend master @a -257.5 -57 25.5 0.4 1.0 0.05

#timers
execute if score .hexdoor1 .timer >= .n5 .num run scoreboard players remove .hexdoor1 .timer 1
execute if score .hexdoor2 .timer >= .n5 .num run scoreboard players remove .hexdoor2 .timer 1