#
scoreboard players remove .map_display .data 1
execute if score .map_display .data < .0 .num run scoreboard players set .map_display .data 9

#
function game:menu/map_display