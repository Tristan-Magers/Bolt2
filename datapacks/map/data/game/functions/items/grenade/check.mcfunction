execute as @s[scores={ID=1..}] run scoreboard players operation @e[type=snowball] ID -= @s ID
execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item -= @s ID.item
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run summon armor_stand ~ ~-1.6 ~ {Tags:["grenadehit"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @s[scores={ID=1..}] run scoreboard players operation @e[type=snowball] ID += @s ID
execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item += @s ID.item

kill @s