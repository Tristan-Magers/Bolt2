# forceload map area early
$execute positioned $(load_point) run forceload add ~ ~ ~$(dx) ~$(dz)

# rebuild menu, then replace doors & load map structure once system is free
$data modify storage bcm schedule set value {load_point:"$(load_point)",dx:$(dx),dy:$(dy),dz:$(dz),mapName:"$(mapName)"}
function game:map/register_maps
schedule function bcm:map/load/schedule 2t