$fill $(x1) ~ $(z1) $(x2) ~ $(z2) air replace gravel
$fill $(x1) ~ $(z1) $(x2) ~ $(z2) air replace target
$fill $(x1) ~ $(z1) $(x2) ~ $(z2) air replace emerald_block
tp @s ~ ~-1 ~
execute store result score test macro_counter run data get entity @s Pos[1]
scoreboard players remove y macro_counter 1
execute if score y macro_counter < min_y macro_counter run return 0
$execute as @s at @s run function game:map/clear_map_loop {x1:$(x1), z1:$(z1), x2:$(x2), z2:$(z2)}
