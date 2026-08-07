# do not change maps immediately before opening editor
execute if score .edit_cd .data matches 0..10 run return fail

# cancel edit countdown if ongoing (no early return)
execute if score .edit_cd .data matches 11.. run title @a times 5 20 5
execute if score .edit_cd .data matches 11.. run title @a subtitle {text:"Map was changed",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run title @a title {text:"Edit Canceled",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run scoreboard players set .edit_cd .data -1


# increase map by 1
scoreboard players add .map_display .data 1
execute if score .map_display .data >= .map_count .data run scoreboard players set .map_display .data 0
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data

# increase map by 1 if map doesn't match custom map setting. Loops until it is correct.
function game:menu/next_map_loop with storage minecraft:macro

# update visual
function game:menu/map_display with storage minecraft:macro
