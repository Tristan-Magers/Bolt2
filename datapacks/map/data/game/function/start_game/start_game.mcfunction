# Rename this file once the conversion is done.
#
# REWORK not entirley how this works
#
#  This is not all in one file, just what the game needs to do.
#1:      load map ID from menu
#1.1:    handle custom random if map ID is 0
#1.2:    load map data from map ID
#
#2:      teleport everyone to load box
#
#3:      calculate elo/teams
#
#  wait until chunks have been loaded, fallback if it doesn't properly load after 10 seconds and throw an error.
#
#4:      clear out any leftover entities
#4.1:    clear out any targets, emerald blocks, etc.
#4.2:    clear out any gravel
#
#5:      add all entities
#5.1:    run map load script (for gravel and such)
#
#6:      run intro
#
#7:      run game


# .load .data:  REFACTOR THIS INTO ".gamestate .data"
# 0 = nothing happening/lobby
# 10 = load data from menu, custom random handler, load map data
# 15 = teleport everyone to load box and wait for chunks to load.
# 16 = chunkload timeout, error and fallback.
# 20 = calculate elo
# 25 = cleaning up any extra entities (which should already be dead)
# 30 = 
# 40 = add all entities
# 45 = run map script
# 50 = intro
# 200 = game running

scoreboard players set .gamestate .data 10

#kill balloon stuff
execute if score .start_cd .data matches 0 as @a run function game:items/balloon/pop_all
execute if score .start_cd .data matches 0 as @a run kill @e[tag=balloon,type=pig]
execute if score .start_cd .data matches 0 as @a run kill @e[tag=balloon_interact]
execute if score .start_cd .data matches 0 as @a run kill @e[tag=balloon_display]

tag @a remove is_m_rider
tag @a remove is_m_rider2
