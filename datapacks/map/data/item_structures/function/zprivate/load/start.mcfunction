scoreboard players set .is_busy item_structures 1

scoreboard players set #count commands 0

execute store result score #system vect_x run data get storage item_structures load.size[0]
execute store result score #system vect_y run data get storage item_structures load.size[1]
execute store result score #system vect_z run data get storage item_structures load.size[2]

scoreboard players operation #count vect_x = #system vect_x
scoreboard players operation #count vect_y = #system vect_y
scoreboard players operation #count vect_z = #system vect_z

# this is redundant - these chunks should already be loaded by now
data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
function item_structures:zprivate/forceload with storage item_structures forceload

# [bleps] sanitize sign NBT
data remove storage item_structures load.nbts[].front_text.messages[].click_event
data remove storage item_structures load.nbts[].back_text.messages[].click_event

# [bleps] clear previous utility placement restrictors
execute if score .place_restrictors item_structures matches 1 run function item_structures:zprivate/remove_restrictors with storage item_structures forceload

function item_structures:zprivate/load/move