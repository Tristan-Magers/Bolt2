## validate item
# is bleps map?
execute unless data entity @s SelectedItem.components."minecraft:custom_data".bleps_map run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"This isn\'t a custom bleps map item!"'}
# map has name?
execute unless data entity @s SelectedItem.components."minecraft:custom_name" run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Your map needs a name!"'}
# name matches another map?
data modify storage bcm macro.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
execute store result score .map_exists .calc run function bcm:map/check_existing with storage bcm macro
# if item map w/ same name, prompt user to overwrite
execute if score .map_exists .calc matches 1 run return run function bcm:dialog/overwrite_existing_map
# if non-item map w/ same name, throw error
execute if score .map_exists .calc matches 2 run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"Can\'t overwrite official or non-item maps"'}


## get map data
# bleps-specific map data
data modify storage bcm map set from entity @s SelectedItem.components."minecraft:custom_data".bleps_map
data remove storage bcm map.load_point
# blocks
data remove storage item_structures save
data modify storage item_structures save set from entity @s SelectedItem.components."minecraft:custom_data".structure
# doors
data remove storage bcm doors
data modify storage bcm doors set from entity @s SelectedItem.components."minecraft:custom_data".doors
# registry
data remove storage bcm registry
data modify storage bcm registry set from entity @s SelectedItem.components."minecraft:custom_data".registry


## save to array
# create map object
function bcm:map/constructor with storage bcm macro
# add to array
data modify storage bcm maps append from storage bcm tmp
data modify storage maps:list maps append from storage bcm tmp.registry
scoreboard players add .map_count .data 1


## place thumbnail
# must finish loading on the same tick
# most thumbnails do 15k-20k commands, my math says it's impossible to exceed 54k
scoreboard players operation #limit_old commands = #limit commands
scoreboard players operation #limit.step_old commands = limit.step commands
scoreboard players set #limit commands 54000
scoreboard players set limit.step commands 0
# find map thumbnail slot
scoreboard players operation .i .calc = .map_count .data
scoreboard players remove .i .calc 1
forceload add 16 -493
summon marker 16.5 -63.5 -492.5 {Tags:["start_point"]}
execute as @n[type=marker,tag=start_point] at @s run function bcm:map/tp_2
# place blocks
scoreboard players set .print_messages item_structures 0
data modify storage item_structures save set from storage bcm tmp.registry.mapThumbnail
# rebuild text box if necessary
execute if data storage bcm tmp.registry.mapTextBlocks at @n[type=marker,tag=start_point] run function game:menu/rebuild_text_box with storage bcm tmp.registry
function item_structures:load
# cleanup
kill @n[type=marker,tag=start_point]
data remove storage bcm tmp
scoreboard players operation #limit commands = #limit_old commands


## place doors
data modify storage bcm tmp.doors set from storage bcm doors
#execute if data storage bcm tmp.doors[-1] at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e summon marker run function bcm:place/door_auto with storage bcm tmp.doors[-1]
execute store result storage bcm macro.load_z int 1 run scoreboard players get #item_map_load_z .calc
function bcm:place/door_auto_get_loadpoint with storage bcm macro
# tellraw @a {nbt:"macro.load_z",storage:"bcm"}
data remove storage bcm tmp


## place map
# UUID is 1 less than active map origin entity
#tag fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e add tp_map_placer
scoreboard players set .new_item_map .calc 1
scoreboard players set .print_messages item_structures 1
scoreboard players set .place_restrictors item_structures 1
data modify storage bcm macro.new set value true
data modify storage bcm macro.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
function bcm:map/load/get_loadpoint with storage bcm macro
data remove storage bcm macro.load_z