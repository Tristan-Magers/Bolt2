#
scoreboard players set @s v_1 -1
execute unless items entity @s inventory.0 * run scoreboard players set @s v_1 0
execute unless items entity @s inventory.1 * run scoreboard players set @s v_1 1
execute unless items entity @s inventory.2 * run scoreboard players set @s v_1 2
execute unless items entity @s inventory.3 * run scoreboard players set @s v_1 3
execute unless items entity @s inventory.4 * run scoreboard players set @s v_1 4
execute unless items entity @s inventory.5 * run scoreboard players set @s v_1 5
execute unless items entity @s inventory.6 * run scoreboard players set @s v_1 6
execute unless items entity @s inventory.7 * run scoreboard players set @s v_1 7
execute unless items entity @s inventory.8 * run scoreboard players set @s v_1 8
execute unless items entity @s inventory.9 * run scoreboard players set @s v_1 9
execute unless items entity @s inventory.10 * run scoreboard players set @s v_1 10
execute unless items entity @s inventory.11 * run scoreboard players set @s v_1 11
execute unless items entity @s inventory.12 * run scoreboard players set @s v_1 12
execute unless items entity @s inventory.13 * run scoreboard players set @s v_1 13
execute unless items entity @s inventory.14 * run scoreboard players set @s v_1 14
execute unless items entity @s inventory.15 * run scoreboard players set @s v_1 15
execute unless items entity @s inventory.16 * run scoreboard players set @s v_1 16
execute unless items entity @s inventory.17 * run scoreboard players set @s v_1 17

execute if items entity @s inventory.0 arrow run scoreboard players set @s v_1 0
execute if items entity @s inventory.1 arrow run scoreboard players set @s v_1 1
execute if items entity @s inventory.2 arrow run scoreboard players set @s v_1 2
execute if items entity @s inventory.3 arrow run scoreboard players set @s v_1 3
execute if items entity @s inventory.4 arrow run scoreboard players set @s v_1 4
execute if items entity @s inventory.5 arrow run scoreboard players set @s v_1 5
execute if items entity @s inventory.6 arrow run scoreboard players set @s v_1 6
execute if items entity @s inventory.7 arrow run scoreboard players set @s v_1 7
execute if items entity @s inventory.8 arrow run scoreboard players set @s v_1 8
execute if items entity @s inventory.9 arrow run scoreboard players set @s v_1 9
execute if items entity @s inventory.10 arrow run scoreboard players set @s v_1 10
execute if items entity @s inventory.11 arrow run scoreboard players set @s v_1 11
execute if items entity @s inventory.12 arrow run scoreboard players set @s v_1 12
execute if items entity @s inventory.13 arrow run scoreboard players set @s v_1 13
execute if items entity @s inventory.14 arrow run scoreboard players set @s v_1 14
execute if items entity @s inventory.15 arrow run scoreboard players set @s v_1 15
execute if items entity @s inventory.16 arrow run scoreboard players set @s v_1 16
execute if items entity @s inventory.17 arrow run scoreboard players set @s v_1 17

execute unless items entity @s inventory.0 * unless items entity @s inventory.17 * run scoreboard players set @s v_1 -99

tag @s remove has_bow_inv
execute if items entity @s inventory.0 * run tag @s add has_bow_inv

# code enter
execute as @s[tag=has_bow_inv] unless items entity @s inventory.18 * run scoreboard players set @s v_1 -999
execute as @s[tag=has_bow_inv] unless items entity @s inventory.19 * run scoreboard players set @s v_1 -999
execute as @s[tag=has_bow_inv] unless items entity @s inventory.20 * run scoreboard players set @s v_1 -999
execute as @s[tag=has_bow_inv] unless items entity @s inventory.21 * run scoreboard players set @s v_1 -9999

tag @s[scores={v_1=-999}] remove button_confirm

execute as @s[tag=has_bow_inv] unless items entity @s inventory.18 * run scoreboard players add @s code_1 1
execute as @s[tag=has_bow_inv] unless items entity @s inventory.19 * run scoreboard players add @s code_2 1
execute as @s[tag=has_bow_inv] unless items entity @s inventory.20 * run scoreboard players add @s code_3 1

execute as @s[tag=has_bow_inv] unless items entity @s inventory.21 * run function game:player/code/try

scoreboard players set @s[scores={code_1=10..}] code_1 0
scoreboard players set @s[scores={code_2=10..}] code_2 0
scoreboard players set @s[scores={code_3=10..}] code_3 0

playsound minecraft:ui.button.click master @s[scores={v_1=-999}] ~ ~ ~ 0.5 1.9

scoreboard players set @s[scores={v_1=-999}] v_1 -99
scoreboard players set @s[scores={v_1=-9999}] v_1 -99

#
execute unless items entity @s inventory.* minecraft:magenta_glazed_terracotta run scoreboard players set @s v_1 -1

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