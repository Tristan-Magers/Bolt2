clear @s bone_meal
tag @s add lobby_inv_correct
scoreboard players set @s ran_bow_icon_timer 0
item replace entity @s hotbar.7 with minecraft:bone_meal[custom_name={"italic":false,"text":"Use inventory to select bow skin"},custom_model_data={strings:["2"]}]

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.25 with air
execute if data block 235 -49 -224 {Items:[{Slot:26b,id:"minecraft:bone_meal"}]} run item replace block 235 -49 -224 container.26 with air