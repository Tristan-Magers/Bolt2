# waits until start point is loaded
execute unless entity @n[type=marker,tag=start_point] run return run schedule function item_structures:load_kill 1t

# waits until whole area is loaded
execute store result score .x .calc run data get storage item_structures forceload.x
execute store result score .z .calc run data get storage item_structures forceload.z
execute at @n[type=marker,tag=start_point] unless function bcm:util/is_area_loaded run return run schedule function item_structures:load_kill 1t

# begins loading and kills start point
function item_structures:load
kill @n[type=marker,tag=start_point]