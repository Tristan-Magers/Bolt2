#start
scoreboard players add @s ID 0
execute as @s[scores={ID=0}] at @s run function game:items/grenade/start

#data merge entity @s {Motion:[0.0,-0.1,0.0]}

#running
scoreboard players add @s t3 1
execute as @s[scores={ID=1..},tag=!decoy] at @s run summon marker ~ ~ ~ {Tags:["grenademark"]}
execute as @s[scores={ID=1..},tag=!decoy] at @s run scoreboard players operation @e[tag=grenademark,limit=1,sort=nearest] t3 = @s t3
execute as @s[scores={ID=1..},tag=!decoy] at @s run scoreboard players operation @e[tag=grenademark,limit=1,sort=nearest] ID = @s ID
execute as @s[scores={ID=1..},tag=!decoy] at @s run scoreboard players operation @e[tag=grenademark,limit=1,sort=nearest] ID.item = @s ID.item
execute as @s[scores={ID=1..},tag=!decoy] at @s run particle minecraft:ash ~ ~ ~ 0 0 0 0.1 1 force
execute as @s[scores={ID=1..,t3=..4},tag=!decoy] at @s run particle minecraft:white_ash ~ ~ ~ 0 0 0 0.1 1 force
execute as @s[scores={ID=1..,t3=5..},tag=!decoy] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force

execute as @s[scores={ID=1..,t3=..20},tag=!decoy] at @s run summon snowball ~ ~ ~ {Tags:["dummy"]}

tag @s remove new_nade
execute as @s[scores={t3=0..},tag=decoy] at @s run kill @s

#
playsound minecraft:block.growing_plant.crop master @a ~ ~ ~ 0.6 2 0