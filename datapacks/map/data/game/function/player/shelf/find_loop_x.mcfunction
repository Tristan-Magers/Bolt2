scoreboard players set .y .calc 0
execute if function game:player/shelf/find_loop_y run return 1

scoreboard players add .x .calc 1
execute if score .x .calc matches ..10 positioned ~1 ~ ~ run return run function game:player/shelf/find_loop_x

return fail