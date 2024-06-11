scoreboard players set .load .data 80
scoreboard players set .load_time .data 0
scoreboard players set .start_cd .data -5

scoreboard players operation .map .data = .map_screen .data
scoreboard players operation .mode .data = .mode_screen .data

execute if score .map_screen .data = .0 .num run function game:game/random_map

scoreboard players set .tmi .data 0

execute if score .mode_screen .data matches 5 run scoreboard players set .tmi .data 1
execute if score .mode_screen .data matches 5 run scoreboard players set .mode .data 1

function game:game/next_id