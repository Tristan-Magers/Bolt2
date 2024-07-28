execute as @s at @s run clear @s arrow
execute as @s at @s run tp @s @s
execute as @s at @s run tp @s ^ ^-0.1 ^-0.09 ~ ~3.5
execute as @s at @s run tp @s ~ ~0.3 ~
scoreboard players set @s killStreak 0
execute as @s[scores={time_dead=8..}] at @s run tp @s ^ ^ ^-0.05
scoreboard players add @s time_dead 1
gamemode adventure @s[scores={time_dead=16..}]