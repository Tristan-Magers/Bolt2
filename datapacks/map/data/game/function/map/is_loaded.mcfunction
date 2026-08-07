# get absolute x and z lengths
$scoreboard players set .x1 .calc $(x1)
$scoreboard players set .z1 .calc $(z1)
$scoreboard players set .x .calc $(x2)
$scoreboard players set .z .calc $(z2)
scoreboard players operation .x .calc -= .x1 .calc
scoreboard players operation .z .calc -= .z1 .calc
execute if score .x .calc matches ..-1 run scoreboard players operation .x .calc *= .n1 .num
execute if score .z .calc matches ..-1 run scoreboard players operation .z .calc *= .n1 .num

# check chunks
$execute positioned $(x1) 0 $(z1) run return run function bcm:util/is_area_loaded