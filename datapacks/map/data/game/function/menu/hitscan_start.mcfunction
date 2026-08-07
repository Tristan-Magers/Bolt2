#
tag @a remove me_player
tag @s add me_player

#
summon marker ~ ~ ~ {Tags:["menu_scan"]}
tp @e[tag=menu_scan,limit=1] @s

scoreboard players set @s menu_afk 0

execute as @e[tag=menu_scan,limit=1] at @s run tp @s ~ ~1.6 ~

execute as @e[type=marker,tag=menu_scan,limit=1] at @s run function game:menu/hitscan_step

title @s subtitle [{"obfuscated":false,"text":"","bold":true,"color":"white"}]

#
tag @s remove me_player