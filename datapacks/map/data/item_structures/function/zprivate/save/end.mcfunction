scoreboard players set .is_busy item_structures 0

bossbar set progress visible false

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures save.size[0]
data modify storage item_structures forceload.z set from storage item_structures save.size[2]
execute at @s run function item_structures:zprivate/forceunload with storage item_structures forceload
kill @e[tag=saver]

# remove unnecessary NBT
data remove storage item_structures save.stack
data remove storage item_structures save.nbts[].x
data remove storage item_structures save.nbts[].y
data remove storage item_structures save.nbts[].z
data remove storage item_structures save.nbts[].id

## data size estimate
# 4 bytes per entry
execute store result score bytes commands run data get storage item_structures save.blocks
scoreboard players operation bytes commands *= .4 .num
# 69 bytes per unique block state
scoreboard players set bytes_index commands 69
scoreboard players operation bytes_index commands *= id commands
scoreboard players operation bytes commands += bytes_index commands
# 400 bytes per block entity
execute store result score bytes_nbt commands run data get storage item_structures save.nbts
scoreboard players operation bytes_nbt commands *= .400 .num
scoreboard players operation bytes commands += bytes_nbt commands
# print if enabled
execute if score bytes commands matches ..999 run return run tellraw @a[tag=verbose] ["approximate structure data size: ",{score:{name:"bytes",objective:"commands"}}," B"]
scoreboard players operation kB commands = bytes commands
scoreboard players operation kB commands /= .1000 .num
scoreboard players operation bytes commands %= .1000 .num
scoreboard players operation bytes commands /= .100 .num
tellraw @a[tag=verbose] ["approximate structure data size: ",{score:{name:"kB",objective:"commands"}},".",{score:{name:"bytes",objective:"commands"}}," kB"]
# ALWAYS print this warning if estimated data size >1.8MB
execute if score kB commands matches 1800.. run tellraw @a [{color:"red",text:"WARNING: structure is most likely too large to export! exporting anyway may result in creating an item with too much data for minecraft to handle. continue at own risk."}]