execute store result storage targets z int 1 run scoreboard players operation z tmp = z_min tmp
function game:map/builder/targets_loop_z with storage targets

execute store result storage targets y int 1 run scoreboard players add y tmp 1
execute if score y tmp <= y_max tmp run function game:map/builder/targets_loop_y