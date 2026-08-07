execute if score .map_display .data matches 0 run return 0
$execute if score .custom_maps_enabled .data matches 0 unless data storage maps:list maps[$(mapID)].isItemMap run return 0
$execute if score .custom_maps_enabled .data matches 1 if data storage maps:list maps[$(mapID)].isItemMap run return 0
execute unless score .custom_maps_enabled .data matches 0..1 run return fail

# increase map by one
scoreboard players add .map_display .data 1
execute if score .map_display .data >= .map_count .data run scoreboard players set .map_display .data 0
execute store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data


function game:menu/next_map_loop with storage minecraft:macro