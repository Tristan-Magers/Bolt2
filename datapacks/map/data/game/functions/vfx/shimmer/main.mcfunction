execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s run tp @s ^ ^ ^.2

scoreboard players add @s t1 1

execute at @s[scores={t1=1..120}] run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:nether_gold_ore replace air
execute at @s positioned ^ ^ ^-7 run fill ~-4 ~ ~-4 ~4 ~ ~4 air replace minecraft:nether_gold_ore

kill @s[scores={t1=200..}]