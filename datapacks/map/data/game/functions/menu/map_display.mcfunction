# Map display lets the map ID be seperate for the order with go through them
execute if score .map_display .data = .1 .num run scoreboard players set .map .data 3
execute if score .map_display .data = .2 .num run scoreboard players set .map .data 5
execute if score .map_display .data = .3 .num run scoreboard players set .map .data 1
execute if score .map_display .data = .4 .num run scoreboard players set .map .data 2
execute if score .map_display .data = .5 .num run scoreboard players set .map .data 6

# resets the visual
fill 266 -36 -227 265 -38 -245 air
fill 266 -40 -249 265 -50 -223 air
fill 266 -51 -242 265 -54 -237 air

# clones in the correct visual
execute if score .map .data = .1 .num run clone 309 -54 -249 308 -36 -223 265 -54 -249 masked force
execute if score .map .data = .2 .num run clone 314 -54 -249 313 -36 -223 265 -54 -249 masked force
execute if score .map .data = .3 .num run clone 319 -54 -249 318 -36 -223 265 -54 -249 masked force
execute if score .map .data = .5 .num run clone 324 -54 -249 323 -36 -223 265 -54 -249 masked force
execute if score .map .data = .6 .num run clone 329 -54 -249 328 -36 -223 265 -54 -249 masked force

# display text to user
function game:menu/map_text

# temp to fix for some modes not being available on some maps
scoreboard players add .mode_display .data 100
function game:menu/mode_next
