function game:id/snowball
execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item -= @s ID.item
execute as @s[scores={ID=1..},tag=!glitter] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run summon armor_stand ~ ~-1.6 ~ {Tags:["grenadehit","new_ger_hit"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",count:1}]}
execute as @s[scores={ID=1..},tag=glitter] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run summon armor_stand ~ ~-1.6 ~ {Tags:["grenadehit","new_ger_hit","glitter"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond",count:1}]}
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players set @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] timer -10
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] timer += @s t3
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players set @e[tag=grenadehit,limit=1,sort=nearest,scores={timer=1..},tag=new_ger_hit] timer 0
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] mot_x = @s mot_x
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] mot_y = @s mot_y
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] mot_z = @s mot_z
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run scoreboard players operation @e[tag=grenadehit,limit=1,sort=nearest,tag=new_ger_hit] ID = @s ID
execute as @s[scores={ID=1..}] unless entity @e[type=snowball,tag=id_share,scores={ID.item=0}] run tag @e[tag=grenadehit] remove new_ger_hit

execute as @s[scores={ID.item=1..}] run scoreboard players operation @e[type=snowball] ID.item += @s ID.item

kill @s