# elo 600 achievement
tag @s remove locked_31

advancement grant @s only advancements:collection/target
advancement grant @s only advancements:collection/target_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page