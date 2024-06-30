#execute as @e[tag=cords_1] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_block replace minecraft:air
#execute as @e[tag=cords_1] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_block replace minecraft:target

execute as @e[tag=cords_1] at @s if block ~ ~ ~ target run tellraw @p [{"score":{"name":"@s","objective":"x"}},{"text":" "},{"score":{"name":"@s","objective":"y"}},{"text":" "},{"score":{"name":"@s","objective":"z"}}]

execute as @e[tag=cords_1] at @s run tp @s ~ ~1 ~

execute as @e[tag=cords_1] at @s run scoreboard players add @s y 1

scoreboard players add @e[tag=cords_1] t2 1
execute as @e[tag=cords_1,scores={t2=30..}] at @s run tp @s ~1 ~-30 ~

execute as @e[tag=cords_1,scores={t2=30..}] at @s run scoreboard players add @s x 1
execute as @e[tag=cords_1,scores={t2=30..}] at @s run scoreboard players remove @s y 30

scoreboard players add @e[tag=cords_1,scores={t2=30..}] t1 1
execute as @e[tag=cords_1,scores={t1=30..}] at @s run tp @s ~-30 ~ ~1

execute as @e[tag=cords_1,scores={t1=30..}] at @s run scoreboard players add @s z 1
execute as @e[tag=cords_1,scores={t1=30..}] at @s run scoreboard players remove @s x 30

execute as @e[tag=cords_1,scores={t1=30..}] at @s run scoreboard players remove .step .calc 1

scoreboard players set @e[tag=cords_1,scores={t1=30..}] t1 0
scoreboard players set @e[tag=cords_1,scores={t2=30..}] t2 0

execute if score .step .calc > .0 .num run function game:dev/cords/step

kill @e[tag=cords_1]