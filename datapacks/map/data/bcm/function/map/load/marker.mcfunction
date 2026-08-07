tag @s add start_point

# set load point if new map
$execute if score .new item_structures matches 1 run function bcm:map/set_load_point {mapName:"$(mapName)"}

# y offset
execute at @s run tp ~ ~-1 ~