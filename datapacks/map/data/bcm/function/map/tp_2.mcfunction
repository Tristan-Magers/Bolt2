execute unless loaded ~2 ~ ~ run forceload add ~2 ~
tp @s ~2 ~ ~
scoreboard players remove .i .calc 1

execute if score .i .calc matches 1.. at @s run function bcm:map/tp_2