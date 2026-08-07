execute if score #count vect_x matches 1.. run function item_structures:zprivate/load/block
execute if score #count vect_x matches 1.. run scoreboard players remove #count vect_x 1
execute if score #count vect_x matches 1.. at @s run tp @s ~1 ~ ~

execute if score #count vect_x matches 1.. unless score #count commands >= #limit commands run return run function item_structures:zprivate/load/move
execute if score #count vect_x matches ..0 unless score #count commands >= #limit commands run return run function item_structures:zprivate/load/move_z
execute if score #count commands >= #limit commands run schedule function item_structures:zprivate/load/move 1t
execute if score #count commands >= #limit commands run scoreboard players set #count commands 0