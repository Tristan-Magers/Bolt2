#
execute at @s if block ~ ~ ~ minecraft:deepslate_coal_ore unless entity @e[type=marker,tag=temp_block,distance=..0.3] unless block ~ -64 ~ redstone_block run fill ~ ~ ~ ~ ~ ~ gravel replace minecraft:deepslate_coal_ore
#execute at @s if block ~ ~ ~ minecraft:deepslate_coal_ore unless entity @e[type=marker,tag=temp_block,distance=..0.3] unless block ~ -64 ~ redstone_block run summon marker ~ ~ ~ {Tags:["temp_block"]}
execute at @s if block ~ ~ ~ minecraft:deepslate_coal_ore unless entity @e[type=marker,tag=temp_block,distance=..0.3] if block ~ -64 ~ redstone_block run tell @p[scores={place_block=1..}] can't place there!
execute at @s if block ~ ~ ~ minecraft:deepslate_coal_ore unless entity @e[type=marker,tag=temp_block,distance=..0.3] if block ~ -64 ~ redstone_block run fill ~ ~ ~ ~ ~ ~ air replace minecraft:deepslate_coal_ore

#
execute at @s run tp @s ~ ~ ~1
scoreboard players remove @s x 1

execute as @s[scores={x=..0,y=1..}] at @s run tp @s ~ ~1 ~
execute as @s[scores={x=..0,y=1..}] at @s run tp @s ~ ~ ~-15
execute as @s[scores={x=..0,y=1..}] run scoreboard players remove @s y 1

execute as @s[scores={x=..0,y=..0,z=1..}] at @s run tp @s ~1 ~ ~
execute as @s[scores={x=..0,y=..0,z=1..}] at @s run tp @s ~ ~-15 ~
execute as @s[scores={x=..0,y=..0,z=1..}] run scoreboard players remove @s z 1

scoreboard players set @s[scores={y=..0,z=1..}] y 15
scoreboard players set @s[scores={x=..0,y=1..}] x 15

execute unless entity @s[scores={x=..0,y=..0,z=..0}] at @s run function game:detection/block_scan/step