execute store result score .index custom_random_dialog run scoreboard players operation .new_state custom_random_dialog = @s custom_random_dialog
scoreboard players operation .new_state custom_random_dialog %= .10 .num
execute store result storage maps:list custom_random_dialog.mapID byte 1 run scoreboard players operation .index custom_random_dialog /= .10 .num
function game:menu/custom_random/input_macro with storage maps:list custom_random_dialog
function game:menu/custom_random/generate
scoreboard players set @s custom_random_dialog 0