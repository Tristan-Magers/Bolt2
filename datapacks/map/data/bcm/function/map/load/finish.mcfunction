# time
function bcm:util/end_timer
execute if score .print_messages item_structures matches 1 run tellraw @a ["Final Load Time: ",{nbt:"timer.m",storage:"bcm",interpret:true},{nbt:"timer.s",storage:"bcm",interpret:true},{nbt:"timer.ms",storage:"bcm",interpret:true}]

execute if score .hard select_area matches 1 run function bcm:map/load/finish_editor

# improve load ETA
# get real load rate
execute store result score .rate .calc run data get storage item_structures save.blocks
scoreboard players operation .rate .calc *= .10 .num
scoreboard players operation .rate .calc /= .ms_total .calc
scoreboard players operation .rate .calc *= .100 .num
execute if score .print_messages item_structures matches 1 run tellraw @a[tag=verbose] ["Average Load Rate: ",{score:{name:".rate",objective:".calc"}}," entries/s"]
# % difference
scoreboard players operation .r .calc = .rate .calc
scoreboard players operation .r .calc *= .100 .num
scoreboard players operation .r .calc /= .load_entries/s .calc
scoreboard players remove .r .calc 100
execute if score .print_messages item_structures matches 1 if score .r .calc matches 0.. run tellraw @a[tag=verbose] ["Loaded ",{score:{name:".r",objective:".calc"}},"% Faster than Estimated"]
scoreboard players operation .r .calc *= .n1 .num
execute if score .print_messages item_structures matches 1 if score .r .calc matches 1.. run tellraw @a[tag=verbose] ["Loaded ",{score:{name:".r",objective:".calc"}},"% Slower than Estimated"]
# new estimate = avg(old est., real) if >1s
execute if score .ms_total .calc matches 1000.. run scoreboard players operation .load_entries/s .calc += .rate .calc
execute if score .ms_total .calc matches 1000.. run scoreboard players operation .load_entries/s .calc /= .2 .num

# keep it simple - forceload the whole map editor area all the time
function bcm:editor/forceload

# clone in-game-destructible blocks for map resetting
data modify storage bcm tmp.x set from storage item_structures save.size[0]
data modify storage bcm tmp.y set from storage item_structures save.size[1]
data modify storage bcm tmp.z set from storage item_structures save.size[2]
execute store result storage bcm tmp.max_blocks int 1 run gamerule max_block_modifications
gamerule max_block_modifications 7200000
execute if score .place_restrictors item_structures matches 1 at @s run function bcm:map/clone_destructible with storage bcm tmp
function bcm:map/max_block_modifications with storage bcm tmp

# utility placement restrictors
execute if score .place_restrictors item_structures matches 1 run function bcm:map/load/restrictors
data remove storage bcm tmp
data remove storage bcm macro
scoreboard players set .place_restrictors item_structures 0

## all code past this command only runs if new map
execute unless score .new_item_map .calc matches 1 run return 1
scoreboard players reset .new_item_map

# tp map placer
#execute store result score .z .calc run data get storage item_structures save.size[2]
#execute store result storage bcm macro.z int 1 run scoreboard players add .z .calc 64
#execute as fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6e at @s run function bcm:map/tp_placer with storage bcm macro
execute store result score .z .calc run data get storage item_structures save.size[2]
scoreboard players add .z .calc 64
scoreboard players operation #item_map_load_z .calc += .z .calc