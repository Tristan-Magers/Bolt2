$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run summon marker $(pos) {Tags:["target_marker"]}

execute store result storage macro targetID int 1 run scoreboard players add targetCounter macro_counter 1
execute if score targetCounter macro_counter <= targetCount macro_counter run function game:map/spawn_target_markers_loop with storage macro