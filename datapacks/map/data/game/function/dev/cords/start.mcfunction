kill @e[tag=cords_1]
 
summon minecraft:marker -433.5 -55.00 -28.5 {Tags:["cords_1"]}

scoreboard players set .step .calc 100

scoreboard players set @e[tag=cords_1] x -434
scoreboard players set @e[tag=cords_1] y -55
scoreboard players set @e[tag=cords_1] z -29

execute if score .step .calc > .0 .num run function game:dev/cords/step