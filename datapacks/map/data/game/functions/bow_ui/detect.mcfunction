#
scoreboard players set @s v_1 -1
execute as @s[nbt=!{Inventory:[{Slot:9b}]}] run scoreboard players set @s v_1 0
execute as @s[nbt=!{Inventory:[{Slot:10b}]}] run scoreboard players set @s v_1 1
execute as @s[nbt=!{Inventory:[{Slot:11b}]}] run scoreboard players set @s v_1 2
execute as @s[nbt=!{Inventory:[{Slot:12b}]}] run scoreboard players set @s v_1 3
execute as @s[nbt=!{Inventory:[{Slot:13b}]}] run scoreboard players set @s v_1 4
execute as @s[nbt=!{Inventory:[{Slot:14b}]}] run scoreboard players set @s v_1 5
execute as @s[nbt=!{Inventory:[{Slot:15b}]}] run scoreboard players set @s v_1 6
execute as @s[nbt=!{Inventory:[{Slot:16b}]}] run scoreboard players set @s v_1 7
execute as @s[nbt=!{Inventory:[{Slot:17b}]}] run scoreboard players set @s v_1 8
execute as @s[nbt=!{Inventory:[{Slot:18b}]}] run scoreboard players set @s v_1 9
execute as @s[nbt=!{Inventory:[{Slot:19b}]}] run scoreboard players set @s v_1 10
execute as @s[nbt=!{Inventory:[{Slot:20b}]}] run scoreboard players set @s v_1 11
execute as @s[nbt=!{Inventory:[{Slot:21b}]}] run scoreboard players set @s v_1 12
execute as @s[nbt=!{Inventory:[{Slot:22b}]}] run scoreboard players set @s v_1 13
execute as @s[nbt=!{Inventory:[{Slot:23b}]}] run scoreboard players set @s v_1 14
execute as @s[nbt=!{Inventory:[{Slot:24b}]}] run scoreboard players set @s v_1 15
execute as @s[nbt=!{Inventory:[{Slot:25b}]}] run scoreboard players set @s v_1 16
execute as @s[nbt=!{Inventory:[{Slot:26b}]}] run scoreboard players set @s v_1 17

execute as @s[nbt={Inventory:[{Slot:9b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 0
execute as @s[nbt={Inventory:[{Slot:10b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 1
execute as @s[nbt={Inventory:[{Slot:11b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 2
execute as @s[nbt={Inventory:[{Slot:12b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 3
execute as @s[nbt={Inventory:[{Slot:13b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 4
execute as @s[nbt={Inventory:[{Slot:14b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 5
execute as @s[nbt={Inventory:[{Slot:15b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 6
execute as @s[nbt={Inventory:[{Slot:16b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 7
execute as @s[nbt={Inventory:[{Slot:17b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 8
execute as @s[nbt={Inventory:[{Slot:18b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 9
execute as @s[nbt={Inventory:[{Slot:19b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 10
execute as @s[nbt={Inventory:[{Slot:20b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 11
execute as @s[nbt={Inventory:[{Slot:21b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 12
execute as @s[nbt={Inventory:[{Slot:22b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 13
execute as @s[nbt={Inventory:[{Slot:23b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 14
execute as @s[nbt={Inventory:[{Slot:24b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 15
execute as @s[nbt={Inventory:[{Slot:25b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 16
execute as @s[nbt={Inventory:[{Slot:26b,id:"minecraft:arrow"}]}] run scoreboard players set @s v_1 17

execute as @s[nbt=!{Inventory:[{Slot:9b}]}] as @s[nbt=!{Inventory:[{Slot:26b}]}] run scoreboard players set @s v_1 -99
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:magenta_glazed_terracotta"}]}] v_1 -1

#
scoreboard players operation @s v_2 = @s bow_ui_page
scoreboard players operation @s v_2 *= .18 .num

scoreboard players operation @s v_3 = @s v_1
scoreboard players operation @s v_3 += @s v_2

#
execute if score @s v_1 matches 0.. if score @s v_3 matches ..77 run function game:bow_ui/select_bow
execute if score @s v_1 matches 0.. if score @s v_3 matches 78.. run function game:bow_ui/make_page
execute if score @s v_1 matches -99 run function game:bow_ui/make_page

tag @s remove new_team