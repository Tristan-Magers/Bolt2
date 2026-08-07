# get load point
$data modify storage bcm macro.load_point set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].map.load_point

# get old volume (to remove old doors)
$data modify storage bcm macro.dx set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].structure.size[0]
$data modify storage bcm macro.dy set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].structure.size[1]
$data modify storage bcm macro.dz set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].structure.size[2]

# overwrite map data
$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}] merge from storage bcm tmp
$data modify storage maps:list maps[{mapName:"$(mapName)"}] set from storage bcm tmp.registry

# load new map structure & doors
scoreboard players set .print_messages item_structures 1
function bcm:map/overwrite_load with storage bcm macro