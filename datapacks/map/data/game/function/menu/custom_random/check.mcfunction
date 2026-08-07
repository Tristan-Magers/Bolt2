execute if score @s custom_random_dialog matches -1 run dialog clear @s
execute if score @s custom_random_dialog matches 1.. run function game:menu/custom_random/input
execute unless score @s custom_random_dialog matches 0 run scoreboard players reset @s custom_random_dialog