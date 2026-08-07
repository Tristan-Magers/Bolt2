# get enabled maps
execute if score .custom_maps_enabled .data matches 0 run data modify storage maps:list tmp_random.enabled_maps append from storage maps:list maps[{enabled:true}]
execute if score .custom_maps_enabled .data matches 0 run data remove storage maps:list tmp_random.enabled_maps[{isItemMap:true}]
execute if score .custom_maps_enabled .data matches 1 run data modify storage maps:list tmp_random.enabled_maps append from storage maps:list maps[{enabled:true,isItemMap:true}]
data remove storage maps:list tmp_random.enabled_maps[{mapName:"RANDOM"}]

# choose random enabled map
execute store result score .enabled_maps .random run data get storage maps:list tmp_random.enabled_maps
execute store result score .map_random .random run random value 1..
execute store result storage maps:list tmp_random.index int 1 run scoreboard players operation .map_random .random %= .enabled_maps .random

# load map
function game:map/map_from_random with storage maps:list tmp_random

# clean up
data remove storage maps:list tmp_random