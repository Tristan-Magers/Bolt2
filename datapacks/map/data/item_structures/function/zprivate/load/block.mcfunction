scoreboard players add #count commands 50

# read entry
execute store result score #block_id commands run data get storage item_structures load.blocks[0]

## single block
execute if score #block_id commands matches 0..32767 run return run function item_structures:zprivate/load/block_place

## multiple blocks
# parse entry
scoreboard players operation #same_count commands = #block_id commands
scoreboard players operation #block_id commands %= .32768 .num
scoreboard players operation #same_count commands /= .32768 .num

# if entry fits in the row, easy
execute if score #same_count commands < #count vect_x run data remove storage item_structures load.blocks[0]
# if entry goes past end of row, split it
execute if score #same_count commands >= #count vect_x run function item_structures:zprivate/load/split_entry

# fill
execute store result storage item_structures macro.index short 1 run scoreboard players get #block_id commands
execute store result storage item_structures macro.length_minus_one short 1 run scoreboard players get #same_count commands
function item_structures:zprivate/load/block_fill_lookup with storage item_structures macro