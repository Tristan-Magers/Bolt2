# add the map name to maps:active, currently used for achievements
$data modify storage maps:active mapName set from storage maps:list tmp_random.enabled_maps[$(index)].mapName

# normal maps
$execute if score .custom_maps_enabled .data matches 0 run return run function game:map/load_map with storage maps:list tmp_random.enabled_maps[$(index)]

# item maps
$function game:map/load_item_map with storage maps:list tmp_random.enabled_maps[$(index)]