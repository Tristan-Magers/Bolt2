# Map display lets the map ID be seperate for the order with go through them
#execute if score .map_display .data = .0 .num run scoreboard players set .map_screen .data 0
#execute if score .map_display .data = .1 .num run scoreboard players set .map_screen .data 1
#execute if score .map_display .data = .2 .num run scoreboard players set .map_screen .data 2
#execute if score .map_display .data = .3 .num run scoreboard players set .map_screen .data 3
#execute if score .map_display .data = .4 .num run scoreboard players set .map_screen .data 4
#execute if score .map_display .data = .5 .num run scoreboard players set .map_screen .data 5
#execute if score .map_display .data = .6 .num run scoreboard players set .map_screen .data 6
#execute if score .map_display .data = .7 .num run scoreboard players set .map_screen .data 7
#execute if score .map_display .data = .8 .num run scoreboard players set .map_screen .data 8
#execute if score .map_display .data = .9 .num run scoreboard players set .map_screen .data 9

scoreboard players operation .map_screen .data = .map_display .data


# resets the visual
fill 266 -35 -224 265 -38 -248 air
#fill 266 -40 -249 265 -50 -223 air
#fill 266 -51 -242 265 -54 -237 air

# clones in the correct visual
function game:menu/clone_menu

# temp to fix for some modes not being available on some maps
function game:menu/clone_mode

# display text to user
$function game:menu/map_text with storage maps:list maps[$(mapID)]