# wait until unbusy
execute if score .is_busy item_structures matches 1 run return run schedule function bcm:map/load/schedule 2t

# replace doors
data modify storage bcm tmp.doors set from storage bcm doors
function bcm:place/replace_doors

# load map structure
scoreboard players set .place_restrictors item_structures 1
scoreboard players set .print_messages item_structures 1
function bcm:map/load/schedule_macro with storage bcm schedule
data remove storage bcm schedule