execute store result storage targets y int 1 run scoreboard players operation y tmp = y_min tmp
function game:map/builder/targets_loop_y

execute store result storage targets x int 1 run scoreboard players add x tmp 1
execute if score x tmp <= x_max tmp run schedule function game:map/builder/targets_loop_x 1
execute unless score x tmp <= x_max tmp run function game:map/builder/targets_output with storage targets