#
tag @e remove current_nade
tag @s add current_nade

#
tag @s add started

#
execute as @s[tag=!glitter] run playsound minecraft:item.firecharge.use master @a ~ ~-2 ~ 0.3 1.5
execute as @s[tag=!glitter] run playsound minecraft:item.shield.break master @a ~ ~-2 ~ 0.5 1.5
execute as @s[tag=!glitter] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 0.4 1.4
execute as @s[tag=!glitter] run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 0.35 0
execute as @s[tag=!glitter] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.2 0.5

execute as @s[tag=glitter] run playsound minecraft:item.dye.use master @a ~ ~ ~ 0.8 0.9
execute as @s[tag=glitter] run playsound minecraft:item.dye.use master @a ~ ~ ~ 0.5 2

#IDs
function game:items/newid

tag @a remove thrower
execute on origin run tag @s add thrower

scoreboard players set @p[tag=thrower] snowball 0
scoreboard players operation @s ID = @p[tag=thrower] ID

#motion
summon marker ~ ~ ~ {Tags:["getdir"]}

execute as @e[tag=getdir,tag=!old] at @s run tp @s @p[tag=thrower]
execute as @e[tag=getdir,tag=!old] at @s run function game:physics/getdir

scoreboard players operation @s x = @e[limit=1,tag=getdir,tag=!old] DirX
scoreboard players operation @s y = @e[limit=1,tag=getdir,tag=!old] DirY
scoreboard players operation @s z = @e[limit=1,tag=getdir,tag=!old] DirZ

#scoreboard players add @s y 6

execute as @s[tag=!glitter] run summon snowball ~ ~0.15 ~ {Item:{id:"minecraft:kelp",count:1},Tags:["new_nade"],Motion:[0.0,-10.0,0.0]}
execute as @s[tag=glitter] run summon snowball ~ ~0.15 ~ {Item:{id:"minecraft:clay_ball",count:1},Tags:["new_nade","glitter"],Motion:[0.0,-10.0,0.0]}
#tag @s add new_nade

#
data modify entity @e[limit=1,tag=new_nade] Owner set from entity @p UUID

#
execute store result score @s x run data get entity @s Motion[0] 100
#execute unless entity @p[tag=thrower] store result score @s z run data get entity @s Motion[1] 67
execute store result score @s z run data get entity @s Motion[2] 100

#
#data modify entity @e[limit=1,tag=new_nade] Motion[0] set from entity @e[limit=1,tag=current_nade]

#
execute store result entity @e[limit=1,tag=new_nade] Motion[0] double 0.01 run scoreboard players get @s x
execute store result entity @e[limit=1,tag=new_nade] Motion[1] double 0.015 run scoreboard players get @s y
execute store result entity @e[limit=1,tag=new_nade] Motion[2] double 0.01 run scoreboard players get @s z

scoreboard players operation @e[limit=1,tag=new_nade] ID = @s ID
scoreboard players operation @e[limit=1,tag=new_nade] ID.item = @s ID.item

tag @e[tag=getdir] add kill
tag @e[tag=getdir] add old

scoreboard players set @s ID -1
scoreboard players set @s ID.item -1
tag @s add decoy

#
execute as @e[limit=1,tag=new_nade] at @s run function game:items/grenade/main

#
tag @a remove thrower
tag @e remove current_nade

#
#scoreboard player set @s t3 0