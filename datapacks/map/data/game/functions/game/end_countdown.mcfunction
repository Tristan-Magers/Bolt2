scoreboard players remove .end_countdown .data 1
execute if score .end_countdown .data = .60 .num if score .mode .data = .1 .num run effect give @a minecraft:darkness 4 0 true
execute if score .end_countdown .data = .40 .num if score .mode .data = .6 .num run effect give @a minecraft:blindness 3 0 true
execute if score .end_countdown .data = .20 .num if score .mode .data = .6 .num run tag @a remove dark
execute if score .end_countdown .data = .0 .num run function game:end