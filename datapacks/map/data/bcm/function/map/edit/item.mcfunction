$data modify storage bcm mapNameEditing set value "$(mapName)"

## begin placing copy
# copies map structure to item_structures save
# do not remove map editor objects
scoreboard players set .hard select_area 1
$function bcm:map/load {mapName:"$(mapName)",new:false}

## get map config data
# writes to bcm map
$data modify storage bcm map set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map

## get map registry data
$data modify storage bcm registry.mapSize set from storage maps:list maps[{mapName:"$(mapName)"}].mapSize
$data modify storage bcm registry.mapColor set from storage maps:list maps[{mapName:"$(mapName)"}].mapColor

## null absolute to relative
data modify storage bcm abs_to_rel set value {pos:"~ ~ ~"}

## load map data
function bcm:map/edit/load

## max wall height
# stored as relative
execute summon marker run function bcm:map/edit/wall_height_item

## doors
# reads from bcm maps[].doors
$data modify storage bcm tmp.doors set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].doors
execute if data storage bcm tmp.doors[-1] summon marker run function bcm:place/door_auto_editor with storage bcm tmp.doors[-1]
data remove storage bcm tmp

return 1