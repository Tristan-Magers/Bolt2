#
scoreboard players add @s[tag=!playing] bow_texture_place 1

scoreboard players set @s[scores={bow_texture_place=78..}] bow_texture_place 0

scoreboard players operation @s temp_bow_value = @s bow_texture_place
function game:bow_ui/get_bow_id
scoreboard players operation @s bow_texture = @s temp_bow_id

#
tag @s remove bow_locked
execute store result storage minecraft:macro input.texture int 1 run scoreboard players get @s bow_texture
function game:bow_ui/macro_check_lock with storage minecraft:macro input

#
execute at @s[tag=bow_locked,tag=!playing] run function game:player/bow/next_and_check