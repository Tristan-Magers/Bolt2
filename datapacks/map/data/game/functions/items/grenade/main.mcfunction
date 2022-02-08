scoreboard players add @s ID 0
execute as @s[scores={ID=0}] at @s run function game:items/newid
execute as @s[scores={ID=0}] at @s run scoreboard players operation @s ID = @p[scores={ID=1..}] ID

execute as @s[scores={ID=1..}] at @s run summon marker ~ ~ ~ {Tags:["grenademark"]}
execute as @s[scores={ID=1..}] at @s run scoreboard players operation @e[tag=grenademark,limit=1,sort=nearest] ID = @s ID
execute as @s[scores={ID=1..}] at @s run scoreboard players operation @e[tag=grenademark,limit=1,sort=nearest] ID.item = @s ID.item
execute as @s[scores={ID=1..}] at @s run particle minecraft:ash ~ ~ ~ 0 0 0 0.1 1 force