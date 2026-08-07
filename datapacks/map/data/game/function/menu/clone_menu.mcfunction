# clones in the correct visual
fill 270 -35 -222 271 -54 -249 air strict

# cursor uuid: 
# a8c9d4ee-a615-48ec-a9de-9baf67e4e639
# [I;-1463167762,-1508554516,-1445028945,1743054393]
# essentially this lets me always use one entity with 0 possiblities of duplicates

execute store result storage macro x int 2 run scoreboard players get .map_screen .data
data modify storage macro y set value 0
kill a8c9d4ee-a615-48ec-a9de-9baf67e4e639
summon marker 17.5 -62.5 -492.5 {UUID:[I;-1463167762,-1508554516,-1445028945,1743054393]}
function game:menu/move_cursor with storage macro


execute at a8c9d4ee-a615-48ec-a9de-9baf67e4e639 run clone ~ ~ ~ ~-1 ~20 ~27 270 -54 -249 strict masked force

#execute if score .map_screen .data = .1 .num run clone 309 -54 -249 308 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .2 .num run clone 314 -54 -249 313 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .3 .num run clone 319 -54 -249 318 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .5 .num run clone 324 -54 -249 323 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .6 .num run clone 329 -54 -249 328 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .12 .num run clone 334 -54 -249 333 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .10 .num run clone 339 -54 -249 338 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .14 .num run clone 343 -54 -249 344 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .15 .num run clone 347 -54 -249 348 -35 -223 270 -54 -249 masked force
#execute if score .map_screen .data = .0 .num run clone 351 -54 -249 352 -35 -223 270 -54 -249 masked force

scoreboard players set .map_screen_time .data 0
execute store result score .map_screen_time_type .data run random value 0..7

# is this old? this looks old.
# might not be old....

# custom maps replace bottom w/ edit button visual
execute if score .custom_maps_enabled .data matches 1 run fill 271 -54 -242 271 -51 -235 raw_gold_block strict
execute if score .custom_maps_enabled .data matches 1 run fill 270 -54 -242 270 -51 -235 polished_basalt[axis=z] strict
execute if score .custom_maps_enabled .data matches 1 run fill 270 -53 -242 270 -52 -235 air strict