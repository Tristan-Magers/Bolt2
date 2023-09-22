kill @e[tag=clone_1]
kill @e[tag=clone_2]
 
summon minecraft:marker -353.5 -54.00 -93.5 {Tags:["clone_1"]}
summon minecraft:marker -326.5 -54.00 -49.5 {Tags:["clone_2"]}

scoreboard players set .step .calc 22

execute if score .step .calc > .0 .num run function game:dev/clone/step