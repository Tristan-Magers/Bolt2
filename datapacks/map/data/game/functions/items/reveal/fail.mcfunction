clear @s minecraft:filled_map
scoreboard players set @s drop_map 1
scoreboard players set @s useMap 0
tellraw @s [{"text":"Can't use now","color":"white"}]