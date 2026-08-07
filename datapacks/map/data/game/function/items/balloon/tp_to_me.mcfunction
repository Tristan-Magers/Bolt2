#used for lobby ride

tag @e remove my_balloon
tag @s add me

execute as @e[tag=balloon,tag=!hitbox] run function game:items/balloon/pop_ran2

execute at @s run tp @e[tag=my_balloon] ~-2 ~5 ~

tag @s remove me