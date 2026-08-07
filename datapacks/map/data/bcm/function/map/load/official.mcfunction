## get map structure
# this should never fail
#$return run function bcm:fail/tellraw {input:'"ERROR: can\'t edit $(mapName) because it is an official (non-item) map, and shuba has not written the code to do this."'}
$execute unless data storage bcm official_map_structures[{mapName:"$(mapName)"}] run return run function bcm:fail/tellraw {input:'"ERROR: can\'t find official map structure for $(mapName)"'}
$data modify storage item_structures save set from storage bcm official_map_structures[{mapName:"$(mapName)"}]


## begin placing map
# y offset
summon marker ~ ~-.9 ~ {Tags:[start_point]}

# time estimate
execute store result score .l .calc run data get storage minecraft:item_structures save.blocks
scoreboard players operation .l .calc /= .load_entries/s .calc
scoreboard players operation .s .calc = .l .calc
scoreboard players operation .l .calc /= .60 .num
scoreboard players operation .s .calc %= .60 .num
execute if score .print_messages item_structures matches 1 if score .l .calc matches 0 run tellraw @a ["estimated time to load: ",{score:{name:".s",objective:".calc"}},"s"]
execute if score .print_messages item_structures matches 1 if score .l .calc matches 1.. run tellraw @a ["estimated time to load: ",{score:{name:".l",objective:".calc"}},"m ",{score:{name:".s",objective:".calc"}},"s"]

# timer
function bcm:util/start_timer

# load
schedule function item_structures:load_kill 5t

return 1