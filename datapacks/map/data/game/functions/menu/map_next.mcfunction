#
scoreboard players add .map_display .data 1
execute if score .map_display .data >= .10 .num run scoreboard players set .map_display .data 1

#
function game:menu/map_display