#execute at a source to scan from blocks that are not tracked

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~-7 ~-7 ~-7 {Tags:["block_scan"]}

execute as @e[type=marker,tag=block_scan,tag=!kill] at @s run scoreboard players set @s x 15
execute as @e[type=marker,tag=block_scan,tag=!kill] at @s run scoreboard players set @s y 15
execute as @e[type=marker,tag=block_scan,tag=!kill] at @s run scoreboard players set @s z 15

execute as @e[type=marker,tag=block_scan,tag=!kill] at @s run function game:detection/block_scan/step

tag @e[type=marker,tag=block_scan,tag=!kill] add kill