execute at @s if block ~0.2 ~ ~ gravel run tag @s add gravel
execute at @s if block ~-0.2 ~ ~ gravel run tag @s add gravel
execute at @s if block ~ ~0.2 ~ gravel run tag @s add gravel
execute at @s if block ~ ~-0.2 ~ gravel run tag @s add gravel
execute at @s if block ~ ~ ~0.2 gravel run tag @s add gravel
execute at @s if block ~ ~ ~-0.2 gravel run tag @s add gravel

fill ~0.2 ~ ~ ~-0.2 ~ ~ minecraft:air replace gravel
fill ~ ~0.2 ~ ~ ~-0.2 ~ minecraft:air replace gravel
fill ~ ~ ~0.2 ~ ~ ~-0.2 minecraft:air replace gravel

execute at @s[tag=!gravel] at @s run fill ~0.2 ~0.2 ~0.2 ~-0.2 ~-0.2 ~-0.2 minecraft:air replace gravel

execute at @s[tag=gravel] at @s run playsound minecraft:block.gravel.break master @a

kill @s