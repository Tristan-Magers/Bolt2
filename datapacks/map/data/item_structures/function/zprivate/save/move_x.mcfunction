execute if score #count vect_x matches 1.. run function item_structures:zprivate/save/block
execute if score #count vect_x matches 1.. run tp @s ~1 ~ ~
execute if score #count vect_x matches 1.. run scoreboard players remove #count vect_x 1

execute if score #count vect_x matches 1.. unless score #count commands >= #limit commands run return run function item_structures:zprivate/save/move
execute if score #count vect_x matches ..0 unless score #count commands >= #limit commands run return run function item_structures:zprivate/save/move_z
execute if score #count commands >= #limit commands run schedule function item_structures:zprivate/save/move 1t
execute if score #count commands >= #limit commands run scoreboard players set #count commands 0