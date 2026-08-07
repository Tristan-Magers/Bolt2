# get y
execute store result score .y .calc run data get entity @s Pos[1] 100
scoreboard players operation .y .calc %= .100 .num
kill @s

# slab blockstate checks
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return fail
execute store result score #type .calc if block ~ ~ ~ #minecraft:slabs[type=bottom]
execute if score #type .calc matches 1 if score .y .calc matches ..55 run return fail
execute if score #type .calc matches 0 if score .y .calc matches 45.. run return fail
return 1