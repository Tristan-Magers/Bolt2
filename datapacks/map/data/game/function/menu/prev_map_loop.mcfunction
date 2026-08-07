execute if score .map_display .data matches 0 run return 0
$execute if score .custom_maps_enabled .data matches 0 unless data storage maps:list maps[$(mapID)].isItemMap run return 0
$execute if score .custom_maps_enabled .data matches 1 if data storage maps:list maps[$(mapID)].isItemMap run return 0
execute unless score .custom_maps_enabled .data matches 0..1 run return fail

# if everything passes, lower the map by one.
scoreboard players remove .map_display .data 1

# do this due to .map_count being indexed to 1 instead of 0
# then overwrite .map_display with the id of the last map.
scoreboard players remove .map_count .data 1
execute if score .map_display .data matches ..-1 run scoreboard players operation .map_display .data = .map_count .data
scoreboard players add .map_count .data 1

execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data

function game:menu/prev_map_loop with storage minecraft:macro