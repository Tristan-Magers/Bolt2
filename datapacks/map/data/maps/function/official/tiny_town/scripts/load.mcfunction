# middle walls
fill -389 1 -385 -392 -1 -387 minecraft:gravel
fill -379 -1 -387 -383 1 -385 gravel

# deco plants
setblock -388 -1 -374 minecraft:brown_mushroom
setblock -388 -1 -374 minecraft:brown_mushroom

setblock -387 -1 -373 minecraft:dead_bush
setblock -391 -1 -380 minecraft:dead_bush
setblock -376 -1 -381 minecraft:dead_bush
setblock -374 -1 -378 minecraft:dead_bush
setblock -380 -1 -375 minecraft:dead_bush

# door and target, which need special cases for target mode
setblock -392 1 -370 minecraft:target
execute if score .mode .data = .7 .num run setblock -392 1 -370 minecraft:air

setblock -392 1 -402 minecraft:target
execute if score .mode .data = .7 .num run setblock -392 1 -402 minecraft:air

setblock -392 -1 -402 minecraft:iron_door[hinge=left,half=lower,facing=east]
setblock -392 0 -402 minecraft:iron_door[hinge=left,half=upper,facing=east]

setblock -392 -1 -370 minecraft:iron_door[hinge=right,half=lower,facing=east]
setblock -392 0 -370 minecraft:iron_door[hinge=right,half=upper,facing=east]

execute if score .mode .data = .7 .num run setblock -392 -1 -402 minecraft:air
execute if score .mode .data = .7 .num run setblock -392 0 -402 minecraft:air

execute if score .mode .data = .7 .num run setblock -392 -1 -370 minecraft:air
execute if score .mode .data = .7 .num run setblock -392 0 -370 minecraft:air