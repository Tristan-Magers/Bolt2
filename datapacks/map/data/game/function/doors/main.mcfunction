#
execute as @s[tag=!new,tag=!red] at @s run function animated_java:shutter/summon
execute as @s[tag=!new,tag=red] at @s run function animated_java:shutter/summon/red
tag @s add new

#
tag @s add open
execute as @s[tag=red,y_rotation=-180] at @s positioned ^-1.5 ^-1 ^-2 unless entity @p[dx=-4,dy=3,dz=-2,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=-180] at @s positioned ^-1.5 ^-1 ^-2 unless entity @p[dx=-4,dy=3,dz=-2,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=90] at @s positioned ^-2.5 ^-1 ^-2 unless entity @p[dx=-2,dy=3,dz=4,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=90] at @s positioned ^-2.5 ^-1 ^-2 unless entity @p[dx=-2,dy=3,dz=4,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=-90] at @s positioned ^-1.5 ^-1 ^-3 unless entity @p[dx=2,dy=3,dz=-4,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=-90] at @s positioned ^-1.5 ^-1 ^-3 unless entity @p[dx=2,dy=3,dz=-4,team=blue] run tag @s remove open
execute as @s[tag=red,y_rotation=0] at @s positioned ^-2.5 ^-1 ^-3 unless entity @p[dx=4,dy=3,dz=2,team=red] run tag @s remove open
execute as @s[tag=!red,y_rotation=0] at @s positioned ^-2.5 ^-1 ^-3 unless entity @p[dx=4,dy=3,dz=2,team=blue] run tag @s remove open

#
execute as @s[tag=open,tag=!open_2] at @s run fill ^-1 ^ ^ ^1 ^2 ^ air replace yellow_stained_glass_pane
execute as @s[tag=!open,tag=open_2] at @s run fill ^-1 ^ ^ ^1 ^2 ^ yellow_stained_glass_pane replace air

execute as @s[tag=open,tag=!open_2] at @s run execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function animated_java:shutter/animations/open_curled/play
execute as @s[tag=!open,tag=open_2] at @s run execute as @e[tag=aj.rig_root,limit=1,sort=nearest] run function animated_java:shutter/animations/close_curled/play

execute as @s[tag=open,tag=!open_2] at @s run playsound minecraft:block.wooden_pressure_plate.click_on master @a ~ ~ ~ 1 0.9
execute as @s[tag=!open,tag=open_2] at @s run playsound minecraft:block.wooden_pressure_plate.click_off master @a ~ ~ ~ 1 1

execute as @s[tag=open,tag=!open_2] at @s run playsound minecraft:block.stone_pressure_plate.click_on master @a ~ ~ ~ 1 1.1
execute as @s[tag=!open,tag=open_2] at @s run playsound minecraft:block.stone_pressure_plate.click_off master @a ~ ~ ~ 1 1.4

#
scoreboard players add @s[tag=open] t4 1
scoreboard players remove @s[tag=!open] t4 1

scoreboard players set @s[scores={t4=..0}] t4 0
scoreboard players set @s[scores={t4=13..}] t4 13

#
execute as @s[scores={t4=2},tag=open] at @s run playsound minecraft:block.bamboo_wood_button.click_on master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=4},tag=open] at @s run playsound minecraft:block.bamboo_wood_button.click_on master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=6},tag=open] at @s run playsound minecraft:block.bamboo_wood_button.click_on master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=8},tag=open] at @s run playsound minecraft:block.bamboo_wood_button.click_on master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=10},tag=open] at @s run playsound minecraft:block.bamboo_wood_button.click_on master @a ~ ~ ~ 0.8 1.3

execute as @s[scores={t4=2},tag=!open] at @s run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=4},tag=!open] at @s run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=6},tag=!open] at @s run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=8},tag=!open] at @s run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 0.8 1.3
execute as @s[scores={t4=10},tag=!open] at @s run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 0.8 1.3

execute as @s[scores={t4=1},tag=!open] at @s run playsound minecraft:block.wool.fall master @a ~ ~ ~ 0.4 1
execute as @s[scores={t4=11},tag=open] at @s run playsound minecraft:block.bamboo_wood.fall master @a ~ ~ ~ 0.4 1.45

#
tag @s[tag=!open] remove open_2
tag @s[tag=open] add open_2