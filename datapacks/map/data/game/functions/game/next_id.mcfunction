# game tracks the ID of a the gamestate at .current_if .data
# this ID will be tracked against the players "game_id" to see if they are in match with the current gamestate

# this function is called to further the game id universally and with players to indicate players not present
# should be handled when they join the game (ex. they joined after a new game started)

scoreboard players add .current_id .data 1
scoreboard players operation @a game_id = .current_id .data