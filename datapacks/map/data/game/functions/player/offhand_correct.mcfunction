#
execute store result score @s scrap run clear @s minecraft:netherite_scrap
tag @s add scrap_data

#
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] weapon.offhand from entity @s hotbar.0

#
clear @s minecraft:bow
clear @s minecraft:blue_dye
clear @s minecraft:red_dye
clear @s minecraft:carrot_on_a_stick

scoreboard players set @s[nbt=!{Inventory:[{Slot:7b}]}] t1 7
scoreboard players set @s[nbt=!{Inventory:[{Slot:6b}]}] t1 6
scoreboard players set @s[nbt=!{Inventory:[{Slot:5b}]}] t1 5
scoreboard players set @s[nbt=!{Inventory:[{Slot:4b}]}] t1 4
scoreboard players set @s[nbt=!{Inventory:[{Slot:3b}]}] t1 3
scoreboard players set @s[nbt=!{Inventory:[{Slot:2b}]}] t1 2
scoreboard players set @s[nbt=!{Inventory:[{Slot:1b}]}] t1 1
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:-106b}]}] t1 8

item replace entity @s[nbt=!{Inventory:[{Slot:1b}]},scores={t1=1}] hotbar.1 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:2b}]},scores={t1=2}] hotbar.2 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:3b}]},scores={t1=3}] hotbar.3 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:4b}]},scores={t1=4}] hotbar.4 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:5b}]},scores={t1=5}] hotbar.5 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:6b}]},scores={t1=6}] hotbar.6 from entity @s weapon.offhand
item replace entity @s[nbt=!{Inventory:[{Slot:7b}]},scores={t1=7}] hotbar.7 from entity @s weapon.offhand
item replace entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:-106b}]},scores={t1=8}] hotbar.8 from entity @s weapon.offhand

item replace entity @s weapon.offhand with air

#
function game:player/scrap_correct