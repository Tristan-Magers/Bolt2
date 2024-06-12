summon marker 239 -54 -284 {Tags:["range_target","init"]}
scoreboard players set .tries .data 0
execute as @e[type=marker,tag=init] at @s run function game:lobby/range/target_spawn_rng
execute if score .tries .data matches 200.. run tellraw @a ["MEGA FAIL: COULD NOT FIND VALID LOBBY TARGET SPOT AFTER ",{"score":{"name":".tries","objective":".data"}}," ROLLS"]

execute if score .tries .data matches ..199 as @e[type=marker,tag=init] at @s run setblock ~ ~ ~ target

tag @e[type=marker,tag=init] remove init