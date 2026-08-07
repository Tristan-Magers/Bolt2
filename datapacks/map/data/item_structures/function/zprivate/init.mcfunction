scoreboard objectives add vect_x dummy
scoreboard objectives add vect_y dummy
scoreboard objectives add vect_z dummy

scoreboard objectives add commands dummy
scoreboard players set #limit commands 30000
scoreboard players set limit.step commands 2000
scoreboard objectives add item_structures dummy

bossbar add progress {"text":"Progress","color":"green"}

scoreboard players set .max_export_volume item_structures 3000000

forceload add 69420 69420
setblock 69420 0 69420 yellow_shulker_box

scoreboard players add .print_messages item_structures 0