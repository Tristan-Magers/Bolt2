fill -405 8 107 -403 8 107 minecraft:waxed_weathered_copper_trapdoor[open=true,facing=south]
fill -405 8 181 -403 8 181 minecraft:waxed_exposed_copper_trapdoor[open=true,facing=north]

#
fill -387 8 182 -387 10 180 minecraft:spruce_fence
fill -387 8 108 -387 10 106 minecraft:spruce_fence

kill @e[type=minecart,tag=valley]
summon minecraft:minecart -374.69 22.5 182.32 {Tags:["valley"]}