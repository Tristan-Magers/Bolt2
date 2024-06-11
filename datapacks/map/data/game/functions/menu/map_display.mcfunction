# Map display lets the map ID be seperate for the order with go through them
execute if score .map_display .data = .0 .num run scoreboard players set .map_screen .data 0
execute if score .map_display .data = .1 .num run scoreboard players set .map_screen .data 10
execute if score .map_display .data = .2 .num run scoreboard players set .map_screen .data 3
execute if score .map_display .data = .3 .num run scoreboard players set .map_screen .data 5
execute if score .map_display .data = .4 .num run scoreboard players set .map_screen .data 2
execute if score .map_display .data = .5 .num run scoreboard players set .map_screen .data 15
execute if score .map_display .data = .6 .num run scoreboard players set .map_screen .data 1
execute if score .map_display .data = .7 .num run scoreboard players set .map_screen .data 12
execute if score .map_display .data = .8 .num run scoreboard players set .map_screen .data 14
execute if score .map_display .data = .9 .num run scoreboard players set .map_screen .data 6





#
kill @e[type=text_display,tag=map_name]
execute if score .map_screen .data = .3 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11.5f,12f,11.5f]},text:'{"text":" ⏣ DIVIDE ⏣ ","font":"fancy","bold":false,"color":"#97DEA0"}'}
execute if score .map_screen .data = .5 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[14.5f,12f,14.5f]},text:'{"text":" 📡 HEX 📡 ","font":"fancy","bold":false,"color":"#A797DE"}'}
execute if score .map_screen .data = .1 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,12f,12f]},text:'{"text":" 🏬 TOWERS 🏬 ","font":"fancy","bold":false,"color":"#9DAAC7"}'}
execute if score .map_screen .data = .2 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15.2f,12f,15.2f]},text:'{"text":"🚇 COVES 🚇","font":"fancy","bold":false,"color":"#9595DE"}'}
execute if score .map_screen .data = .6 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[13f,12f,13f]},text:'{"text":" ⛰ VALLEY ⛰ ","font":"fancy","bold":false,"color":"#DEAF97"}'}
execute if score .map_screen .data = .12 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12.5f,12f,12.5f]},text:'{"text":" ✼ GARDEN ✼ ","font":"fancy","bold":false,"color":"#97DEBF"}'}
execute if score .map_screen .data = .10 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,12f,10f]},text:'{"text":" 🐓 TINY TOWN 🐓 ","font":"fancy","bold":false,"color":"#97C4DE"}'}
execute if score .map_screen .data = .14 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[14.5f,12f,14.5f]},text:'{"text":" 💧 RIVER 💧 ","font":"fancy","bold":false,"color":"#97C4DE"}'}
execute if score .map_screen .data = .15 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[9.6f,12f,9.6f]},text:'{"text":"🌴 LIGHTHOUSE 🌴","font":"fancy","bold":false,"color":"#97C4DE"}'}
execute if score .map_screen .data = .0 .num run summon text_display 265.25 -38.25 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11.5f,12f,9.6f]},text:'{"text":" ? RANDOM ? ","font":"fancy","bold":false,"color":"#97C4DE"}'}

# resets the visual
fill 266 -35 -224 265 -38 -248 air
#fill 266 -40 -249 265 -50 -223 air
#fill 266 -51 -242 265 -54 -237 air

# clones in the correct visual
function game:menu/clone_menu

# temp to fix for some modes not being available on some maps
function game:menu/clone_mode

# display text to user
function game:menu/map_text