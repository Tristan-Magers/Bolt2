#execute if score .20 .num < .load .data run execute at @a if block ~ ~-1 ~ minecraft:polished_blackstone run scoreboard players set .load .data 20

kill @e[tag=head]
kill @e[tag=cutscene]

gamemode adventure @a

execute if score .map .data = .1 .num run tp @a -54.5 -57.00 8.5 0 0
execute if score .map .data = .2 .num run tp @a -164.5 -59.00 30.5 0 0
execute if score .map .data = .3 .num run tp @a -226.5 -59.00 20.5 0 0
execute if score .map .data = .4 .num run tp @a -287.5 -59.00 28.5 0 0
execute if score .map .data = .5 .num run tp @a -316.5 -59.00 -69.5 0 0
execute if score .map .data = .6 .num run tp @a -392.5 -59.00 16.5 0 0
execute if score .map .data = .7 .num run tp @a -392.5 -59.00 16.5 0 0

scoreboard players remove .load .data 1

execute if score .0 .num = .load .data run function game:start

effect give @a minecraft:invisibility 2 10 true
effect give @a minecraft:weakness 2 10 true