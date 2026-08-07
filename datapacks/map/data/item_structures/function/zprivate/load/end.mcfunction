scoreboard players set .is_busy item_structures 0

bossbar set progress visible false

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
execute at @s run function item_structures:zprivate/forceunload with storage item_structures forceload
kill @e[tag=loader]