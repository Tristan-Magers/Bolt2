execute store result storage minecraft:macro input.texture int 1 run scoreboard players get @s bow_texture
execute if entity @s[type=player] run function game:bow/macro_bow_model_player with storage minecraft:macro input
execute if entity @s[tag=dummy_bow_model] run function game:bow/macro_bow_model_dummy with storage minecraft:macro input
