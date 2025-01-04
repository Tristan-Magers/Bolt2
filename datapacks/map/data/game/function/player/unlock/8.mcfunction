# elo 800 achievement
tag @s remove locked_8

advancement grant @s only advancements:ctf/elo3
advancement grant @s only advancements:ctf/elo3_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page