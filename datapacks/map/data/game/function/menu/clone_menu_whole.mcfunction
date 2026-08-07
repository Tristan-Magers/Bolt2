#execute if score .map_screen .data = .1 .num run clone 309 -54 -249 308 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .2 .num run clone 314 -54 -249 313 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .3 .num run clone 319 -54 -249 318 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .5 .num run clone 324 -54 -249 323 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .6 .num run clone 329 -54 -249 328 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .12 .num run clone 334 -54 -249 333 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .10 .num run clone 339 -54 -249 338 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .14 .num run clone 343 -54 -249 344 -35 -223 265 -54 -249 masked force
#execute if score .map_screen .data = .15 .num run clone 347 -54 -249 348 -35 -223 265 -54 -249 masked force

# not sure this is used at all anymore, but needs to be ported to new system.
# might make sense to clone twice, once to full menu and then again for transition

# turns out thats exactly what it does smh


# this will clone from the copy of the map, which is used for the animation.
# this function is called when you change the gamemode.
clone 271 -40 -249 270 -54 -223 265 -54 -249 masked force