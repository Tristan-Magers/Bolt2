# Map display lets the map ID be seperate for the order with go through them
execute if score .map_display .data = .1 .num run scoreboard players set .map_screen .data 3
execute if score .map_display .data = .2 .num run scoreboard players set .map_screen .data 5
execute if score .map_display .data = .3 .num run scoreboard players set .map_screen .data 1
execute if score .map_display .data = .4 .num run scoreboard players set .map_screen .data 2
execute if score .map_display .data = .5 .num run scoreboard players set .map_screen .data 12
execute if score .map_display .data = .6 .num run scoreboard players set .map_screen .data 6
execute if score .map_display .data = .7 .num run scoreboard players set .map_screen .data 10

# resets the visual
fill 266 -35 -224 265 -38 -248 air
fill 266 -40 -249 265 -50 -223 air
fill 266 -51 -242 265 -54 -237 air

# clones in the correct visual
execute if score .map_screen .data = .1 .num run clone 309 -54 -249 308 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .2 .num run clone 314 -54 -249 313 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .3 .num run clone 319 -54 -249 318 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .5 .num run clone 324 -54 -249 323 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .6 .num run clone 329 -54 -249 328 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .12 .num run clone 334 -54 -249 333 -35 -223 265 -54 -249 masked force
execute if score .map_screen .data = .10 .num run clone 339 -54 -249 338 -35 -223 265 -54 -249 masked force

# temp to fix for some modes not being available on some maps
scoreboard players add .mode_display .data 100
function game:menu/mode_next

# display text to user
function game:menu/map_text