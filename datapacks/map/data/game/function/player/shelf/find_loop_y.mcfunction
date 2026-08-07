scoreboard players set .z .calc 0
execute if function game:player/shelf/find_loop_z run return 1

scoreboard players add .y .calc 1
execute if score .y .calc matches ..10 positioned ~ ~1 ~ run return run function game:player/shelf/find_loop_y

return fail