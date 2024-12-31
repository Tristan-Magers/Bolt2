# elo 600 achievement
tag @s remove locked_23

advancement grant @s only advancements:collection/infection
advancement grant @s only advancements:collection/infection_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page