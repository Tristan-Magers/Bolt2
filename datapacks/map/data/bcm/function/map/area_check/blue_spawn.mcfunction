data remove storage bcm macro
data modify storage bcm macro.area set from storage bcm map.blue_spawn.area
data modify storage bcm macro.start set from storage bcm abs.blue_spawn.start
return run function bcm:map/area_check/macro with storage bcm macro