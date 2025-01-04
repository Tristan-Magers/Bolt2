# elo 600 achievement
tag @s remove locked_64

advancement grant @s only advancements:collection/all
advancement grant @s only advancements:collection/all_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page