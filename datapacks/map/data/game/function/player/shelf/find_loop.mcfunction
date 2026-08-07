# check every block within 5 on any axis
# if this can't find it, NOTHING can

# in singleplayer, this was occasionally invoked if i used an autoclicker and looked around fast
# i could not get this check to fail
scoreboard players set .x .calc 0
execute positioned ~-5 ~-5 ~-5 run return run function game:player/shelf/find_loop_x