execute store result storage minecraft:macro input.texture int 1 run scoreboard players get @s bow_texture
execute if entity @s[type=player,gamemode=adventure] run function game:bow/macro_bow_model_player with storage minecraft:macro input
execute if entity @s[tag=dummy_bow_model] run function game:bow/macro_bow_model_dummy with storage minecraft:macro input

scoreboard players add @s ran_bow_icon_timer 1
scoreboard players set @s[scores={ran_bow_icon_timer=35..}] ran_bow_icon_timer 0
execute as @s[scores={ran_bow_icon_timer=1}] store result storage minecraft:macro input.texture int 1 run random value 1..77
execute as @s[scores={ran_bow_icon_timer=1}] if entity @s[type=player,tag=lobby,gamemode=adventure] run function game:bow/macro_bow_model_player_icon with storage minecraft:macro input