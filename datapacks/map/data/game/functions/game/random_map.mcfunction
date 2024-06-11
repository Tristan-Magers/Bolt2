execute store result score .map_random .random run random value 1..9

execute if score .map_random .random = .1 .num run scoreboard players set .map .data 10
execute if score .map_random .random = .2 .num run scoreboard players set .map .data 3
execute if score .map_random .random = .3 .num run scoreboard players set .map .data 5
execute if score .map_random .random = .4 .num run scoreboard players set .map .data 2
execute if score .map_random .random = .5 .num run scoreboard players set .map .data 15
execute if score .map_random .random = .6 .num run scoreboard players set .map .data 1
execute if score .map_random .random = .7 .num run scoreboard players set .map .data 12
execute if score .map_random .random = .8 .num run scoreboard players set .map .data 14
execute if score .map_random .random = .9 .num run scoreboard players set .map .data 6

execute if score .map_random .random = .1 .num if score .map1 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .2 .num if score .map2 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .3 .num if score .map3 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .4 .num if score .map4 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .5 .num if score .map5 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .6 .num if score .map6 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .7 .num if score .map7 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .8 .num if score .map8 .custom_random matches 0 run function game:game/random_map
execute if score .map_random .random = .9 .num if score .map9 .custom_random matches 0 run function game:game/random_map