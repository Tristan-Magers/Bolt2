fill -301 -61 -69 -301 -31 -69 air replace target

execute at @e[tag=clone_1,limit=1] run clone ~ -61 ~ ~ -31 ~ -301 -61 -69 filtered minecraft:target
execute at @e[tag=clone_2,limit=1] run clone -301 -61 -69 -301 -31 -69 ~ -61 ~ filtered minecraft:target

execute as @e[tag=clone_1,limit=1] at @s run tp @s ~1 ~ ~
execute as @e[tag=clone_2,limit=1] at @s run tp @s ~-1 ~ ~

scoreboard players add @e[tag=clone_1,limit=1] t1 1
scoreboard players add @e[tag=clone_2,limit=1] t1 1

execute as @e[tag=clone_1,limit=1,scores={t1=30..}] at @s run tp @s ~-29 ~ ~1
execute as @e[tag=clone_2,limit=1,scores={t1=30..}] at @s run tp @s ~29 ~ ~-1

execute as @e[tag=clone_1,limit=1,scores={t1=30..}] at @s run scoreboard players remove .step .calc 1

scoreboard players set @e[tag=clone_1,limit=1,scores={t1=30..}] t1 1
scoreboard players set @e[tag=clone_2,limit=1,scores={t1=30..}] t1 1

execute if score .step .calc > .0 .num run function game:dev/clone/step

kill @e[tag=clone_1]
kill @e[tag=clone_2]