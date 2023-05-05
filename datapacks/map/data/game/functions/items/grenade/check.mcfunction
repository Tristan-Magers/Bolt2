execute as @s[scores={ID=1..}] run scoreboard players operation @e[type=snowball] ID -= @s ID
execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item -= @s ID.item
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run summon armor_stand ~ ~-1.6 ~ {Tags:["grenadehit"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run scoreboard players set @e[tag=grenadehit,limit=1,sort=nearest] timer -10
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest] timer += @s t3
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run scoreboard players set @e[tag=grenadehit,limit=1,sort=nearest,scores={timer=1..}] timer 0
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest] ID = @s ID

execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.5 1.5
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.7 2
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.9 2
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 0.6 2

execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 0
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.5

execute as @s[scores={ID=1..}] unless entity @e[type=snowball,scores={ID=0,ID.item=0}] run particle minecraft:flash ~ ~0.6 ~ 0 0 0 0 1 force

execute as @s[scores={ID=1..}] run scoreboard players operation @e[type=snowball] ID += @s ID
execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item += @s ID.item

kill @s