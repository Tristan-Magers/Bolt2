## loads map structure called mapName from bcm maps[] with LNW corner at ~ ~ ~
$scoreboard players set .new item_structures $(new)

# summon load point marker
$execute summon marker run function bcm:map/load/marker {mapName:"$(mapName)"}

# time estimate
$data modify storage item_structures save set from storage bcm maps[{registry:{mapName:"$(mapName)"}}].structure
execute store result score .l .calc run data get storage minecraft:item_structures save.blocks
scoreboard players operation .l .calc /= .load_entries/s .calc
scoreboard players operation .s .calc = .l .calc
scoreboard players operation .l .calc /= .60 .num
scoreboard players operation .s .calc %= .60 .num
execute if score .print_messages item_structures matches 1 if score .l .calc matches 0 run tellraw @a ["Estimated Time to Load: ",{score:{name:".s",objective:".calc"}},"s"]
execute if score .print_messages item_structures matches 1 if score .l .calc matches 1.. run tellraw @a ["Estimated Time to Load: ",{score:{name:".l",objective:".calc"}},"m ",{score:{name:".s",objective:".calc"}},"s"]

# timer
function bcm:util/start_timer

# load
#scoreboard players set .print_messages item_structures 1
data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures save.size[0]
data modify storage item_structures forceload.z set from storage item_structures save.size[2]
function item_structures:zprivate/forceload with storage item_structures forceload
# execute store result score tmp .calc run forceload query ~ ~
# tellraw @a ["forceload: ",{score:{name:"tmp",objective:".calc"}}]
# execute store result score tmp .calc if loaded ~ ~ ~
# tellraw @a ["is loaded: ",{score:{name:"tmp",objective:".calc"}}]
schedule function item_structures:load_kill 5t