execute if score .70 .num > .load .data if score .20 .num < .load .data as @a at @s if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked run scoreboard players set .load .data 20

kill @e[tag=head]
kill @e[tag=cutscene]

gamemode adventure @a

execute if score .map .data = .1 .num run tp @a[tag=!loading] -54.5 -57.00 8.5 0 0
execute if score .map .data = .2 .num run tp @a[tag=!loading] -164.5 -59.00 30.5 0 0
execute if score .map .data = .3 .num run tp @a[tag=!loading] -226.5 -59.00 20.5 0 0
execute if score .map .data = .4 .num run tp @a[tag=!loading] -287.5 -59.00 28.5 0 0
execute if score .map .data = .5 .num run tp @a[tag=!loading] -316.5 -59.00 -69.5 0 0
execute if score .map .data = .6 .num run tp @a[tag=!loading] -392.5 -59.00 16.5 0 0
execute if score .map .data = .7 .num run tp @a[tag=!loading] -392.5 -59.00 16.5 0 0
execute if score .map .data = .10 .num run tp @a[tag=!loading] -220.5 -50.00 -431.5 0 0
execute if score .map .data = .12 .num run tp @a[tag=!loading] -18.5 -53.00 -299.50 0 0
execute if score .map .data = .13 .num run tp @a[tag=!loading] -39.5 -37.00 210.5 0 0
execute if score .map .data = .14 .num run tp @a[tag=!loading] -551.5 -20.00 -291.5 0 0
execute if score .map .data = .15 .num run tp @a[tag=!loading] -453.5 -39.00 174.5 0 0

execute as @a[tag=loading] at @s run tp @s @s

scoreboard players remove .load .data 1

execute if score .0 .num < .load .data run tag @a add loading

execute if score .0 .num = .load .data run function game:start
execute if score .0 .num = .load .data run tag @a remove loading

effect give @a minecraft:invisibility 2 10 true
effect give @a minecraft:weakness 2 10 true