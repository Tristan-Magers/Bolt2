# do not change maps immediately before opening editor
execute if score .edit_cd .data matches 0..10 run return fail

# cancel edit countdown if ongoing (no early return)
execute if score .edit_cd .data matches 11.. run title @a times 5 20 5
execute if score .edit_cd .data matches 11.. run title @a subtitle {text:"Map was changed",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run title @a title {text:"Edit Canceled",color:gray,font:fancy}
execute if score .edit_cd .data matches 11.. run scoreboard players set .edit_cd .data -1


#
scoreboard players remove .map_display .data 1


# I don't want to talk about this.
scoreboard players remove .map_count .data 1
execute if score .map_display .data matches ..-1 run scoreboard players operation .map_display .data = .map_count .data
scoreboard players add .map_count .data 1


execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data
function game:menu/prev_map_loop with storage minecraft:macro


function game:menu/map_display with storage minecraft:macro