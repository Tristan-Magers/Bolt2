# place block
execute store result storage item_structures macro.index short 1 run scoreboard players get #block_id commands
function item_structures:zprivate/load/block_place_lookup with storage item_structures macro
# block nbt?
execute if block ~ ~ ~ #item_structures:nbt_savable run function item_structures:zprivate/load/block_nbt
# remove entry
data remove storage item_structures load.blocks[0]