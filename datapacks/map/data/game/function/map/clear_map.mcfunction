$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run summon marker $(x1) $(y2) $(z1) {Tags:["map_clear"]}
$scoreboard players set min_y macro_counter $(y1)
$scoreboard players set y macro_counter $(y2)
$execute as @n[tag=map_clear] at @s run function game:map/clear_map_loop {x1:$(x1), z1:$(z1), x2:$(x2), z2:$(z2)}
kill @e[tag=map_clear]