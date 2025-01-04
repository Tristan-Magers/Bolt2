# elo 600 achievement
tag @s remove locked_58

advancement grant @s only advancements:collection/ctf
advancement grant @s only advancements:collection/ctf_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page