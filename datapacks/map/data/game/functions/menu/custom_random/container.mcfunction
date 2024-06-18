scoreboard players set @a t1 0
scoreboard players set @a t2 0

tag @a remove error

execute as @a store success score @s t1 run clear @s lime_dye
execute as @a store success score @s t2 run clear @s brown_dye

execute if score .map1 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:0b,id:"minecraft:brown_dye"}]} run scoreboard players set .map1 .custom_random 2
execute if score .map2 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:1b,id:"minecraft:brown_dye"}]} run scoreboard players set .map2 .custom_random 2
execute if score .map3 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:2b,id:"minecraft:brown_dye"}]} run scoreboard players set .map3 .custom_random 2
execute if score .map4 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:3b,id:"minecraft:brown_dye"}]} run scoreboard players set .map4 .custom_random 2
execute if score .map5 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:4b,id:"minecraft:brown_dye"}]} run scoreboard players set .map5 .custom_random 2
execute if score .map6 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:5b,id:"minecraft:brown_dye"}]} run scoreboard players set .map6 .custom_random 2
execute if score .map7 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:6b,id:"minecraft:brown_dye"}]} run scoreboard players set .map7 .custom_random 2
execute if score .map8 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:7b,id:"minecraft:brown_dye"}]} run scoreboard players set .map8 .custom_random 2
execute if score .map9 .custom_random matches 0 unless data block 235 -49 -226 {Items:[{Slot:8b,id:"minecraft:brown_dye"}]} run scoreboard players set .map9 .custom_random 2

execute if score .map1 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:0b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map2 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:1b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map3 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:2b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map4 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:3b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map5 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:4b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map6 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:5b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map7 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:6b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map8 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:7b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error
execute if score .map9 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:8b,id:"minecraft:lime_dye"}]} unless data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run tag @a[scores={t1=1..}] add error

execute if score .map1 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:0b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map1 .custom_random 0
execute if score .map2 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:1b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map2 .custom_random 0
execute if score .map3 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:2b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map3 .custom_random 0
execute if score .map4 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:3b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map4 .custom_random 0
execute if score .map5 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:4b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map5 .custom_random 0
execute if score .map6 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:5b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map6 .custom_random 0
execute if score .map7 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:6b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map7 .custom_random 0
execute if score .map8 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:7b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map8 .custom_random 0
execute if score .map9 .custom_random matches 1 unless data block 235 -49 -226 {Items:[{Slot:8b,id:"minecraft:lime_dye"}]} if data block 235 -49 -226 {Items:[{id:"minecraft:lime_dye"}]} run scoreboard players set .map9 .custom_random 0

execute if score .map1 .custom_random matches 2 run scoreboard players set .map1 .custom_random 1
execute if score .map2 .custom_random matches 2 run scoreboard players set .map2 .custom_random 1
execute if score .map3 .custom_random matches 2 run scoreboard players set .map3 .custom_random 1
execute if score .map4 .custom_random matches 2 run scoreboard players set .map4 .custom_random 1
execute if score .map5 .custom_random matches 2 run scoreboard players set .map5 .custom_random 1
execute if score .map6 .custom_random matches 2 run scoreboard players set .map6 .custom_random 1
execute if score .map7 .custom_random matches 2 run scoreboard players set .map7 .custom_random 1
execute if score .map8 .custom_random matches 2 run scoreboard players set .map8 .custom_random 1
execute if score .map9 .custom_random matches 2 run scoreboard players set .map9 .custom_random 1

execute if score .map1 .custom_random matches 1 run item replace block 235 -49 -226 container.0 with lime_dye[custom_name='[{"text":"Tiny Town [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]']
execute if score .map2 .custom_random matches 1 run item replace block 235 -49 -226 container.1 with lime_dye[custom_name='[{"text":"Divide [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]']
execute if score .map3 .custom_random matches 1 run item replace block 235 -49 -226 container.2 with lime_dye[custom_name='[{"text":"Hex [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map4 .custom_random matches 1 run item replace block 235 -49 -226 container.3 with lime_dye[custom_name='[{"text":"Coves [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map5 .custom_random matches 1 run item replace block 235 -49 -226 container.4 with lime_dye[custom_name='[{"text":"Lighthouse [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map6 .custom_random matches 1 run item replace block 235 -49 -226 container.5 with lime_dye[custom_name='[{"text":"Towers [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map7 .custom_random matches 1 run item replace block 235 -49 -226 container.6 with lime_dye[custom_name='[{"text":"Garden [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map8 .custom_random matches 1 run item replace block 235 -49 -226 container.7 with lime_dye[custom_name='[{"text":"River [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map9 .custom_random matches 1 run item replace block 235 -49 -226 container.8 with lime_dye[custom_name='[{"text":"Valley [","italic":false},{"text":"ENABLED","italic":false,"color":green},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]

execute if score .map1 .custom_random matches 0 run item replace block 235 -49 -226 container.0 with brown_dye[custom_name='[{"text":"Tiny Town [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]']
execute if score .map2 .custom_random matches 0 run item replace block 235 -49 -226 container.1 with brown_dye[custom_name='[{"text":"Divide [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]']
execute if score .map3 .custom_random matches 0 run item replace block 235 -49 -226 container.2 with brown_dye[custom_name='[{"text":"Hex [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map4 .custom_random matches 0 run item replace block 235 -49 -226 container.3 with brown_dye[custom_name='[{"text":"Coves [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map5 .custom_random matches 0 run item replace block 235 -49 -226 container.4 with brown_dye[custom_name='[{"text":"Lighthouse [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map6 .custom_random matches 0 run item replace block 235 -49 -226 container.5 with brown_dye[custom_name='[{"text":"Towers [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map7 .custom_random matches 0 run item replace block 235 -49 -226 container.6 with brown_dye[custom_name='[{"text":"Garden [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map8 .custom_random matches 0 run item replace block 235 -49 -226 container.7 with brown_dye[custom_name='[{"text":"River [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]
execute if score .map9 .custom_random matches 0 run item replace block 235 -49 -226 container.8 with brown_dye[custom_name='[{"text":"Valley [","italic":false},{"text":"DISABLED","italic":false,"color":red},{"text":"]","italic":false}]',lore=['{"color":"gray","text":"Tournament Legal","italic":false}']]

execute as @a[scores={t1=1..},tag=!error] at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 1
execute as @a[scores={t2=1..}] at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 1.2
execute as @a[scores={t1=1..},tag=error] at @s run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 1

scoreboard players set @a[scores={t1=1..}] t1 0
scoreboard players set @a[scores={t2=1..}] t2 0

tag @a remove error

clear @a[tag=lobby] lime_dye
clear @a[tag=lobby] brown_dye