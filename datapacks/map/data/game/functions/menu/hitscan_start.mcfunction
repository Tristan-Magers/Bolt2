#
tag @a remove me_player
tag @s add me_player

#
summon marker ~ ~ ~ {Tags:["menu_scan"]}
tp @e[tag=menu_scan,limit=1] @s

execute as @e[tag=menu_scan,limit=1] at @s run tp @s ~ ~1.6 ~

execute as @e[type=marker,tag=menu_scan,limit=1] at @s run function game:menu/hitscan_step

#
tag @s remove me_player