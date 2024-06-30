#
execute if score .mode .data = .6 .num run function game:game/infected/main
execute if score .mode .data = .7 .num if score .TIME .data matches 5..52 run function game:game/targets/run