#
scoreboard players add @s timer 1

execute as @s[scores={timer=1}] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace minecraft:deepslate_coal_ore

kill @s[scores={timer=1..}]