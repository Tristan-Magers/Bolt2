# Map display lets the map ID be seperate for the order with go through them
execute if score .map_display .data = .1 .num run scoreboard players set .map_screen .data 3
execute if score .map_display .data = .2 .num run scoreboard players set .map_screen .data 5
execute if score .map_display .data = .3 .num run scoreboard players set .map_screen .data 1
execute if score .map_display .data = .4 .num run scoreboard players set .map_screen .data 2
execute if score .map_display .data = .5 .num run scoreboard players set .map_screen .data 12
execute if score .map_display .data = .6 .num run scoreboard players set .map_screen .data 6
execute if score .map_display .data = .7 .num run scoreboard players set .map_screen .data 10

#
kill @e[type=text_display,tag=map_name]
execute if score .map_screen .data = .3 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,12f,15f]},text:'{"text":" ⏣ DIVIDE ⏣ ","bold":false,"color":"#97DEA0"}'}
execute if score .map_screen .data = .5 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,12f,15f]},text:'{"text":" ⚛ HEX ⚛ ","bold":false,"color":"#A797DE"}'}
execute if score .map_screen .data = .1 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,12f,15f]},text:'{"text":" ♖ TOWERS ♖ ","bold":false,"color":"#9DAAC7"}'}
execute if score .map_screen .data = .2 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15.5f,12f,15.5f]},text:'{"text":" ⚓ COVES ⚓ ","bold":false,"color":"#9595DE"}'}
execute if score .map_screen .data = .6 .num run summon text_display 265.5 -38.25 -235.57 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,12f,15f]},text:'{"text":"⛰ VALLEY ⛰","bold":false,"color":"#DEAF97"}'}
execute if score .map_screen .data = .12 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[14.5f,12f,14.5f]},text:'{"text":" ✼ GARDEN ✼ ","bold":false,"color":"#97DEBF"}'}
execute if score .map_screen .data = .10 .num run summon text_display 265.5 -38.25 -235.75 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,12f,12f]},text:'{"text":" ⌂ TINY TOWN ⌂ ","bold":false,"color":"#97C4DE"}'}

# resets the visual
fill 266 -35 -224 265 -38 -248 air
fill 266 -40 -249 265 -50 -223 air
fill 266 -51 -242 265 -54 -237 air

# clones in the correct visual
function game:menu/clone_menu

# temp to fix for some modes not being available on some maps
scoreboard players add .mode_display .data 100
function game:menu/mode_next

# display text to user
function game:menu/map_text