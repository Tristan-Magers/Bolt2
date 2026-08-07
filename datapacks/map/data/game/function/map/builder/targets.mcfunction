# precondition: box has positive volume
data modify storage targets arr set value []
scoreboard objectives add tmp dummy
$scoreboard players set x_min tmp $(x_min)
$scoreboard players set y_min tmp $(y_min)
$scoreboard players set z_min tmp $(z_min)
$scoreboard players set x_max tmp $(x_max)
$scoreboard players set y_max tmp $(y_max)
$scoreboard players set z_max tmp $(z_max)

execute store result storage targets x int 1 run scoreboard players operation x tmp = x_min tmp
function game:map/builder/targets_loop_x
