$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run summon marker $(pos) {Rotation:[$(rotation)F,0F],Tags:["gen","init"]}
#execute as @e[type=marker,tag=gen,tag=init] at @s run data merge block ^ ^ ^1 {front_text:{messages:[{"text":" ","color":"black"},{"text":""},{"text":""},{"text":""}]}}
execute as @e[type=marker,tag=gen,tag=init] at @s run function game:map/item_generator_sign

$scoreboard players set @e[type=marker,tag=gen,tag=init] generator_duration $(generator_duration)
$scoreboard players set @e[type=marker,tag=gen,tag=init] generator_warmup $(generator_warmup)

execute if score .tmi .data matches 0 if score .mode .data = .1 .num run tag @e[type=marker,tag=gen] remove init
execute as @e[type=marker,tag=gen,tag=init] run function bcm:place/delete

execute store result storage macro genID int 1 run scoreboard players add generatorCounter macro_counter 1
execute if score generatorCounter macro_counter <= generatorCount macro_counter run function game:map/item_generator_loop with storage macro