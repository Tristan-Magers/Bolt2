execute store result score targets.destroy .calc if entity @e[type=marker,tag=editor_target]

execute as @e[type=marker,tag=editor_target] at @s run setblock ~ ~ ~ air destroy

tellraw @a [{selector:"@s"}," destroyed ",{score:{name:"targets.destroy",objective:".calc"}}," targets"]