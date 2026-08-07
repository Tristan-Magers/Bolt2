tag @e remove my_balloon
tag @s add me

execute as @e[tag=balloon,tag=!hitbox] run function game:items/balloon/pop_ran2

tag @e[tag=my_balloon] add release

tag @s remove me