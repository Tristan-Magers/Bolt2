#tp @s 243.5 -44.00 -235.5 -90 13

scoreboard players set @s menu_afk 0

scoreboard players set .mriders .data 0
execute as @e[tag=menu_ride,tag=rider] run scoreboard players add .mriders .data 1

execute if score .mriders .data matches 0..2 at @s run summon minecraft:block_display ~ ~0.5 ~ {teleport_duration:10,Tags:["menu_ride","new"]}

execute if score .mriders .data matches 0..2 run ride @s mount @e[tag=menu_ride,tag=!rider,limit=1]

scoreboard players set .mrseat1 .data 0
scoreboard players set .mrseat2 .data 0
scoreboard players set .mrseat3 .data 0

execute positioned 243.50 -43.50 -234.00 if entity @e[tag=menu_ride,distance=..0.1] run scoreboard players set .mrseat3 .data 1
execute positioned 243.50 -43.50 -237.00 if entity @e[tag=menu_ride,distance=..0.1] run scoreboard players set .mrseat2 .data 1
execute positioned 243.50 -43.50 -235.5 if entity @e[tag=menu_ride,distance=..0.1] run scoreboard players set .mrseat1 .data 1

execute if score .mriders .data matches 0..2 if score .mrseat3 .data matches 0 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -234.00
execute if score .mriders .data matches 0..2 if score .mrseat2 .data matches 0 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -237.00
execute if score .mriders .data matches 0..2 if score .mrseat1 .data matches 0 run tp @e[type=minecraft:block_display,tag=new,tag=menu_ride] 243.50 -43.50 -235.50

execute if score .mriders .data matches 3.. run title @s times 5 10 10
execute if score .mriders .data matches 3.. run title @s title [{"text":""}]
execute if score .mriders .data matches 3.. run title @s subtitle [{"text":"Too many players in menu"}]
execute if score .mriders .data matches 3.. run tp @s 243.5 -46.00 -235.5 -90 13

execute as @e[tag=menu_ride] run function game:menu/menu_ride

execute at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.1
execute at @s run playsound minecraft:entity.allay.item_taken master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1.7

tag @e[type=minecraft:block_display,tag=new,tag=menu_ride] remove new

tag @a remove join_menu

attribute @s minecraft:scale base set 1

function game:items/balloon/tp_to_me