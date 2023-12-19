clear @s minecraft:filled_map
scoreboard players set @s drop_map 1
scoreboard players set @s useMap 0
tellraw @s[scores={delay_reveal=..0}] [{"text":"Can't use now","color":"gray"}]
tellraw @s[scores={delay_reveal=1..}] [{"text":"On cooldown","color":"gray"}]