execute store result score targets.load .calc run data get storage bcm map.targets
scoreboard players set targets.replace .calc 0
data modify storage bcm tmp.targets set from storage bcm map.targets
execute if data storage bcm tmp.targets[] at @n[type=marker,tag=load_point] summon marker run function bcm:place/target_auto with storage bcm tmp.targets[-1]
tellraw @a [{selector:"@s"}," loaded ",{score:{name:"targets.load",objective:".calc"}}," targets, ",{score:{name:"targets.replace",objective:".calc"}}," of which were already there"]

data remove storage bcm tmp