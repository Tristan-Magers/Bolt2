#
scoreboard players operation @s temp_bow_value = @s v_2

function game:bow_ui/get_bow_id

scoreboard players operation @s v_3 = @s temp_bow_id

execute store result storage minecraft:macro input.slot int 1 run scoreboard players get @s v_1
execute store result storage minecraft:macro input.texture int 1 run scoreboard players get @s v_3
function game:bow_ui/macro_slot with storage minecraft:macro input
