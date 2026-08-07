$data modify storage bcm mapNameEditing set value "$(mapName)"

## begin placing copy
# copies map structure, mapName, and origin to item_structures save
# .hard does 2 things here:
# - it checks if this map can be loaded, and ends this function if it can't
# - if the map can be loaded, then it prevents the new map objects from being immediately overwritten by the structure loader
$execute store success score .hard select_area run function bcm:map/load/official {mapName:"$(mapName)"}
execute if score .hard select_area matches 0 run return fail

## get map config data
# writes to maps:active {}
$function game:map/load_map with storage maps:list maps[{mapName:"$(mapName)"}]
# convert to editor, writing to bcm map
function bcm:map/convert_to_editor

## get map registry data
$data modify storage bcm registry.mapSize set from storage maps:list maps[{mapName:"$(mapName)"}].mapSize
$data modify storage bcm registry.mapColor set from storage maps:list maps[{mapName:"$(mapName)"}].mapColor

## get absolute to relative
execute summon marker run function bcm:map/edit/abs_to_rel

## load map data
function bcm:map/edit/load

## max wall height
# stored as absolute
execute summon marker run function bcm:map/edit/wall_height_official

## doors
# reads from bcm official_map_structures[].doors
$data modify storage bcm tmp.doors set from storage bcm official_map_structures[{mapName:"$(mapName)"}].doors
execute if data storage bcm tmp.doors[-1] summon marker run function bcm:place/door_auto_editor with storage bcm tmp.doors[-1]
data remove storage bcm tmp

return 1