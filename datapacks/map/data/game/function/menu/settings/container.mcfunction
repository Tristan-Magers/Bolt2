#
item replace block 235 -49 -221 container.2 with air
item replace block 235 -49 -221 container.3 with air
item replace block 235 -49 -221 container.4 with air
item replace block 235 -49 -221 container.5 with air
item replace block 235 -49 -221 container.6 with air
item replace block 235 -49 -221 container.7 with air
item replace block 235 -49 -221 container.8 with air

#
scoreboard players set @a t1 0
scoreboard players set @a t2 0

tag @a remove error

execute as @a store success score @s t1 run clear @s cyan_dye
execute as @a store success score @s t2 run clear @s white_dye

#
execute if score .ranked .data matches 0 unless data block 235 -49 -221 {Items:[{Slot:0b,id:"minecraft:cyan_dye"}]} run scoreboard players set .ranked .data 2
execute if score .ranked .data matches 1 unless data block 235 -49 -221 {Items:[{Slot:0b,id:"minecraft:white_dye"}]} run scoreboard players set .ranked .data 0
execute if score .ranked .data matches 2 run scoreboard players set .ranked .data 1
execute if score .ranked .data matches 1 run item replace block 235 -49 -221 container.0 with white_dye[custom_name='[{"text":"CtF RANKED [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"text":"Capture the flag assigns teams based on rank","italic":false,"color":"white"}','{"text":"and changes rank based on performance.","italic":false,"color":"white"}']]
execute if score .ranked .data matches 0 run item replace block 235 -49 -221 container.0 with cyan_dye[custom_name='[{"text":"CtF RANKED [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"text":"Capture the flag assigns teams based on rank","italic":false,"color":"white"}','{"text":"and changes rank based on performance.","italic":false,"color":"white"}']]

#
execute if score .inf_ran .data matches 0 unless data block 235 -49 -221 {Items:[{Slot:1b,id:"minecraft:cyan_dye"}]} run scoreboard players set .inf_ran .data 2
execute if score .inf_ran .data matches 1 unless data block 235 -49 -221 {Items:[{Slot:1b,id:"minecraft:white_dye"}]} run scoreboard players set .inf_ran .data 0
execute if score .inf_ran .data matches 2 run scoreboard players set .inf_ran .data 1
execute if score .inf_ran .data matches 1 run item replace block 235 -49 -221 container.1 with white_dye[custom_name='[{"text":"Infected Priority [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"text":"Infection mode prioritizes players","italic":false,"color":"white"}','{"text":"joined as red for infected.","italic":false,"color":"white"}']]
execute if score .inf_ran .data matches 0 run item replace block 235 -49 -221 container.1 with cyan_dye[custom_name='[{"text":"Infected Priority [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"text":"Infection mode gives players joined","italic":false,"color":"white"}','{"text":"as red or random equal","italic":false,"color":"white"}','{"text":"chance to be infected.","italic":false,"color":"white"}']]

#
execute as @a[scores={t1=1..},tag=!error] at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 1
execute as @a[scores={t2=1..}] at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 1.2
execute as @a[scores={t1=1..},tag=error] at @s run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 1

scoreboard players set @a[scores={t1=1..}] t1 0
scoreboard players set @a[scores={t2=1..}] t2 0

tag @a remove error

clear @a[tag=lobby] cyan_dye
clear @a[tag=lobby] white_dye