# thumbnail changed?
$data modify storage bcm tmp_thumbnail set from storage bcm maps[].registry{mapName:"$(mapName)"}.mapThumbnail
execute store success score #bool .calc run data modify storage bcm tmp_thumbnail set from storage bcm tmp.registry.mapThumbnail
data remove storage bcm tmp_thumbnail

# overwrite map data
$data modify storage bcm maps[{registry:{mapName:"$(mapName)"}}] merge from storage bcm tmp
$data modify storage maps:list maps[{mapName:"$(mapName)"}] set from storage bcm tmp.registry

# rebuild menu if thumbnail changed
execute if score #bool .calc matches 1 run function game:map/register_maps