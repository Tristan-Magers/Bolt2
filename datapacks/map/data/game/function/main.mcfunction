#execute if score .0 .num = .load .data run function game:run
#execute if score .0 .num < .load .data run function game:load

#execute as @a run function game:ui/place_icons

# this will need to be refactored once game:run gets refactored, ideally we don't run all of this trash while we are in the lobby.
execute if score .gamestate .data matches 0 run function game:run
execute if score .gamestate .data matches 10 run function game:start_game/get_map
execute if score .gamestate .data matches 15 run function game:start_game/load_box
execute if score .gamestate .data matches 16 run function game:start_game/failed_to_load
execute if score .gamestate .data matches 20 run function game:start_game/calculate_elo
execute if score .gamestate .data matches 25 run function game:game/mapstart
# add intro here when properly refactored... idk if that will ever happen.
execute if score .gamestate .data matches 50 run function game:run