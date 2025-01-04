# elo 600 achievement
tag @s remove locked_53

advancement grant @s only advancements:collection/general
advancement grant @s only advancements:collection/general_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page