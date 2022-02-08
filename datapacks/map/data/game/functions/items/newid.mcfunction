scoreboard players add .new ID.item 1
scoreboard players operation @s ID.item = .new ID.item 

execute if score .new ID.item > .stats .10000 run scoreboard players set .new ID.item 0