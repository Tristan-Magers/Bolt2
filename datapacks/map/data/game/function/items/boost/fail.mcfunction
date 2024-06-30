scoreboard players set @s drop_egg 1
scoreboard players set @s boost_use 0
tellraw @s[scores={delay_boost=..0}] [{"text":"Can't use now","color":"gray"}]
tellraw @s[scores={delay_boost=1..}] [{"text":"On cooldown","color":"gray"}]