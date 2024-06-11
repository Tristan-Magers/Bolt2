summon marker -284 -54 239 {Tags:["range_target","init"]}
scoreboard players set .tries .data 0
execute as @e[type=marker,tag=init] at @s run function game:lobby/range/target_spawn_rng
execute if score .tries .data matches 200.. run tellraw @a ["MEGA FAIL: COULD NOT FIND VALID LOBBY TARGET SPOT AFTER ",{"score":{"name":".tries","objective":".data"}}," ROLLS"]

setblock ~ ~ ~ target