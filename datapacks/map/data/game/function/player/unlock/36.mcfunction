# elo 600 achievement
tag @s remove locked_36

advancement grant @s only advancements:collection/lobby
advancement grant @s only advancements:collection/lobby_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page