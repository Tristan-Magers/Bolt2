execute at @s as @e[type=marker,tag=door] run function bcm:map/door_restrictors with storage bcm tmp
function bcm:util/parse_area_selector with storage bcm map.red_spawn
data modify storage bcm macro.start set from storage bcm map.red_spawn.start
function bcm:map/spawn_restrictors with storage bcm macro
function bcm:util/parse_area_selector with storage bcm map.blue_spawn
data modify storage bcm macro.start set from storage bcm map.blue_spawn.start
function bcm:map/spawn_restrictors with storage bcm macro