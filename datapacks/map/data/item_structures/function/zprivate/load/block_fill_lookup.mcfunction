# fill
$data modify storage item_structures macro.block set from storage item_structures load.index[$(index)]
function item_structures:zprivate/load/block_fill_fill with storage item_structures macro

# utility placement restrictors
execute if score .place_restrictors item_structures matches 1 if block ~ ~ ~ #minecraft:climbable run function item_structures:zprivate/load/block_fill_diamond with storage item_structures macro

# skip blocks filled
$execute positioned ~$(length_minus_one) ~ ~ run function bcm:util/tp_here
scoreboard players operation #count vect_x -= #same_count commands