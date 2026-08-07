# if "RANDOM", teleport to map editor without opening a map
$data modify storage bcm tmp.mapName set value "$(mapName)"
execute store success score .map_exists .calc run data modify storage bcm tmp.mapName set value "RANDOM"
execute if score .map_exists .calc matches 0 run return run function bcm:map/edit/no_map

# which map type is it?
$execute store result score .map_exists .calc run function bcm:map/check_existing {mapName:"$(mapName)"}

# if no map, throw error
$execute if score .map_exists .calc matches 0 run return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t find map named \\"$(mapName)\\""'}

# remove old map editor objects
execute as @e[type=#bcm:place,tag=map_editor,tag=place] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=#bcm:place,tag=map_editor,tag=place] at @s run function bcm:place/delete
execute as @e[type=#bcm:place,tag=intro_camera] at @s run function bcm:place/delete
execute as @e[type=#bcm:place,tag=spawnpoint] at @s run function bcm:place/delete
execute as @e[type=#bcm:place,tag=render_box] at @s run function bcm:place/delete
execute as @e[type=marker,tag=map_editor,tag=door] at @s run function bcm:place/delete_door
execute as @e[type=block_display,tag=map_editor,tag=gate] at @s run function bcm:place/delete_gate
scoreboard players set .print_messages item_structures 1

# if item map, edit as is
$execute if score .map_exists .calc matches 1 run return run function bcm:map/edit/item {mapName:"$(mapName)"}

# if non-item map, convert data to edit
$execute if score .map_exists .calc matches 2 run return run function bcm:map/edit/official {mapName:"$(mapName)"}