# if trusted, use nbt as is
execute if score .custom_maps_trust_block_nbt .data matches 1 run data modify block ~ ~ ~ {} merge from storage item_structures load.nbts[0]
# else, use nbt only for certain blocks
execute unless score .custom_maps_trust_block_nbt .data matches 1 if block ~ ~ ~ #item_structures:nbt_always_trusted run data modify block ~ ~ ~ {} merge from storage item_structures load.nbts[0]

data remove storage item_structures load.nbts[0]

# always lock containers even if trusted
data modify block ~ ~ ~ lock.count set value -1