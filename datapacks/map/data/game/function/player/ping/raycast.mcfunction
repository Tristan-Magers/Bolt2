# raycast
scoreboard players add .steps .calc 1 
execute if score .steps .calc matches 3.. run scoreboard players set .steps .calc 0
execute if score .steps .calc matches 2 run particle ash ~ ~ ~ 0 0 0 0 1 normal @s
execute positioned ^ ^ ^0.25 if function game:player/ping/check run return run function game:player/ping/raycast

# at pinged location
execute if entity @s[team=red] run tag @a[team=red] add tmp_receive_location_ping
execute if entity @s[team=blue] run tag @a[team=blue] add tmp_receive_location_ping
particle block_marker{block_state:{Name:"repeating_command_block",Properties:{conditional:"true"}}} ~ ~ ~ 0 0 0 0 1 force @a[tag=tmp_receive_location_ping]
playsound block.note_block.pling player @a[tag=tmp_receive_location_ping] ~ ~ ~ 1 1 1
tag @a remove tmp_receive_location_ping
scoreboard players add @s delay_ping 99