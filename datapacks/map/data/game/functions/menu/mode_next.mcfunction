#
scoreboard players add .mode_display .data 1
execute if score .mode_display .data >= .4 .num run scoreboard players set .mode_display .data 1

#
execute if score .mode_display .data = .1 .num run scoreboard players set .mode_screen .data 1
execute if score .mode_display .data = .2 .num run scoreboard players set .mode_screen .data 6
execute if score .mode_display .data = .3 .num run scoreboard players set .mode_screen .data 7
execute if score .mode_display .data = .4 .num run scoreboard players set .mode_screen .data 3
execute if score .mode_display .data = .5 .num run scoreboard players set .mode_screen .data 7

execute unless score .map .data = .1 .num if score .mode_screen .data = .7 .num run scoreboard players set .mode_display .data 1
execute unless score .map .data = .1 .num if score .mode_screen .data = .7 .num run scoreboard players set .mode_screen .data 1

#
fill 265 -51 -236 265 -54 -226 air
fill 266 -51 -235 266 -54 -226 air

execute if score .mode_screen .data = .1 .num run clone 310 -48 -194 311 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .2 .num run clone 305 -48 -194 306 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .3 .num run clone 301 -48 -194 302 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .4 .num run clone 297 -48 -194 296 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .5 .num run clone 292 -48 -194 291 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .6 .num run clone 287 -48 -194 286 -51 -184 265 -54 -236 masked force
execute if score .mode_screen .data = .7 .num run clone 282 -48 -194 281 -51 -184 265 -54 -236 masked force

#
execute if score .mode_screen .data = .1 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Capture The Flag","color":"#8269B5","bold":true},{"text":" | "},{"text":"Capture the enemy teams flag","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .2 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Team Control Points","color":"#43B5AD","bold":true},{"text":" | "},{"text":"Control as many points as possible","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .3 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Free For All","color":"#63B560","bold":true},{"text":" | "},{"text":"FFA Death match","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .4 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Tag","color":"#63B560","bold":true},{"text":" | "},{"text":"One player is it, hunt them down","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .5 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Stars","color":"#8AA1B5","bold":true},{"text":" | "},{"text":"Collect as many stars as you can","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .6 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Infection","color":"#CFAE91","bold":true},{"text":" | "},{"text":"One player must infect an entire team","color":"#889C86","bold":true}]
execute if score .mode_screen .data = .7 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"Target","color":"#CFAE91","bold":true},{"text":" | "},{"text":"Shoot as many targets as possible","color":"#889C86","bold":true}]