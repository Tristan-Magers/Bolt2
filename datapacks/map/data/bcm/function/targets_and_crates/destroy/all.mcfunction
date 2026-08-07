execute store result score targets.destroy .calc if entity @e[type=marker,tag=editor_target]
execute store result score crates.destroy .calc if entity @e[type=interaction,tag=editor_crate]

execute as @e[type=#bcm:place,tag=target_or_crate] at @s run setblock ~ ~ ~ air destroy

tellraw @a [{selector:"@s"}," destroyed ",{score:{name:"targets.destroy",objective:".calc"}}," targets and ",{score:{name:"crates.destroy",objective:".calc"}}," crates"]