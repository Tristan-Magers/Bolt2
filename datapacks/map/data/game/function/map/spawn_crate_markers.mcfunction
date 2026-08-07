$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run summon marker $(pos) {Tags:["crate_marker","$(spawn_chance)"]}

execute store result storage macro crateID int 1 run scoreboard players add crateCounter macro_counter 1
execute if score crateCounter macro_counter <= crateCount macro_counter run function game:map/spawn_crate_markers_loop with storage macro