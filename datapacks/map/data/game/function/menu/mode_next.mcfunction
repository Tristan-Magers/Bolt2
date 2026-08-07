#
execute as @a[tag=me_player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.8 1.2
execute as @a[tag=me_player] at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 0.5 2
execute as @a[tag=me_player] at @s run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1.2

#
scoreboard players add .mode_display .data 1
execute if score .mode_display .data >= .5 .num run scoreboard players set .mode_display .data 1

#
execute if score .mode_display .data = .1 .num run scoreboard players set .mode_screen .data 1
execute if score .mode_display .data = .2 .num run scoreboard players set .mode_screen .data 6
execute if score .mode_display .data = .3 .num run scoreboard players set .mode_screen .data 5
execute if score .mode_display .data = .4 .num run scoreboard players set .mode_screen .data 7

#execute if score .map_display .data = .2 .num if score .mode_screen .data = .6 .num run scoreboard players set .mode_display .data 7
#execute if score .map_display .data = .2 .num if score .mode_screen .data = .6 .num run scoreboard players set .mode_screen .data 7

#execute unless score .map_display .data = .3 .num if score .mode_screen .data = .6 .num run scoreboard players set .mode_display .data 1
#execute unless score .map_display .data = .3 .num if score .mode_screen .data = .6 .num run scoreboard players set .mode_screen .data 1

#execute unless score .map_display .data = .6 .num unless score .map_display .data = .2 .num unless score .map_display .data = .3 .num if score .mode_screen .data = .7 .num run scoreboard players set .mode_display .data 1
#execute unless score .map_display .data = .6 .num unless score .map_display .data = .2 .num unless score .map_display .data = .3 .num if score .mode_screen .data = .7 .num run scoreboard players set .mode_screen .data 1

#
fill 265 -51 -236 265 -54 -226 air
fill 266 -51 -235 266 -54 -226 air

# clones in the correct visual
function game:menu/clone_menu_whole

#
function game:menu/clone_mode

#
execute if score .mode_screen .data = .1 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Capture The Flag","color":"#8269B5","bold":true},{"text":" | "},{"text":"Capture the enemy teams flag","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .2 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Team Control Points","color":"#43B5AD","bold":true},{"text":" | "},{"text":"Control as many points as possible","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .3 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Free For All","color":"#63B560","bold":true},{"text":" | "},{"text":"FFA Death match","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .4 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Tag","color":"#63B560","bold":true},{"text":" | "},{"text":"One player is it, hunt them down","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .5 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Too Many Items","color":"#8AA1B5","bold":true},{"text":" | "},{"text":"Custom items (use chest)","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .6 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Infection","color":"#CFAE91","bold":true},{"text":" | "},{"text":"One player must infect an entire team","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .7 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Target","color":"#CFAE91","bold":true},{"text":" | "},{"text":"Shoot as many targets as possible","color":"#889C86","bold":true}]

kill @e[type=text_display,tag=mode_name]
execute if score .mode_screen .data = .1 .num run summon text_display 265.25 -53.0 -230.1 {Tags:["mode_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,7.8f,12f]},text:{"text":" CTF ","font":"fancy","bold":false,"color":"#EEEEEE"}}
execute if score .mode_screen .data = .5 .num run summon text_display 265.25 -53.0 -230.1 {Tags:["mode_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,7.8f,12f]},text:{"text":" TMI ","font":"fancy","bold":false,"color":"#EEEEEE"}}
execute if score .mode_screen .data = .6 .num run summon text_display 265.25 -53.0 -230.1 {Tags:["mode_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,7.8f,12f]},text:{"text":" INF ","font":"fancy","bold":false,"color":"#EEEEEE"}}
execute if score .mode_screen .data = .7 .num run summon text_display 265.25 -53.0 -230.1 {Tags:["mode_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,7.8f,12f]},text:{"text":" TAR ","font":"fancy","bold":false,"color":"#EEEEEE"}}

# in this file, need to skip over or gray out modes that aren't avaliable for the map.