# elo 600 achievement
tag @s remove locked_35

advancement grant @s only advancements:collection/tmi
advancement grant @s only advancements:collection/tmi_code

execute as @s[tag=lobby,tag=!give_collection] run function game:bow_ui/make_page