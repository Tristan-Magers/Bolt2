# intro camera
data modify storage bcm macro.pos set from storage bcm map.intro_camera
function bcm:map/edit/tp_convert with storage bcm macro
execute at @s run function bcm:place/intro_camera

# red spawnpoint
data modify storage bcm macro.pos set from storage bcm map.red_spawnpoint
function bcm:map/edit/tp_convert with storage bcm macro
execute at @s run function bcm:place/red_spawnpoint

# blue spawnpoint
data modify storage bcm macro.pos set from storage bcm map.blue_spawnpoint
function bcm:map/edit/tp_convert with storage bcm macro
execute at @s run function bcm:place/blue_spawnpoint

kill @s