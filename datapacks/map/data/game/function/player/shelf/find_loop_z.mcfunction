execute if predicate game:used_shelf run return run function game:player/shelf/found

scoreboard players add .z .calc 1
execute if score .z .calc matches ..10 positioned ~ ~ ~1 run return run function game:player/shelf/find_loop_z

return fail