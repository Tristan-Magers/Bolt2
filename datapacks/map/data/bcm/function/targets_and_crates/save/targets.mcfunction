# get origin point
summon marker ~ ~ ~ {Tags:[tmp]}
data modify storage bcm macro.pos set from storage bcm abs.save.start
execute as @n[type=marker,tag=tmp] run function bcm:util/tp with storage bcm macro
execute store result score .x1 .calc run data get entity @n[type=marker,tag=tmp] Pos[0]
execute store result score .y1 .calc run data get entity @n[type=marker,tag=tmp] Pos[1]
execute store result score .z1 .calc run data get entity @n[type=marker,tag=tmp] Pos[2]
kill @e[type=marker,tag=tmp]

# save targets relative to origin
data modify storage bcm map.targets set value []
data modify storage bcm map.save.start set from storage bcm abs.save.start
execute as @e[type=marker,tag=editor_target] at @s if function bcm:map/area_check/save run function bcm:targets_and_crates/save/target
data remove storage bcm tmp

# announce
execute store result score targets.save .calc run data get storage bcm map.targets
tellraw @a ["\n",{selector:"@s"}," saved ",{score:{name:"targets.save",objective:".calc"}}," targets\n"]
execute unless score .overwrite save_map matches 1 run tellraw @a "Targets saved only to export item (old set still loaded on server)"
execute if score .overwrite save_map matches 1 run tellraw @a "Overwrote existing map's target set"

# copy data to export path
data modify storage bcm export.targets set from storage bcm map.targets

# tell players to export
tellraw @a ["YOU'RE NOT DONE YET! Click ",{underlined:true,click_event:{action:"run_command",command:"trigger export_map set 1"},text:"here"}," or type \"/trigger export_map\" to get an item with the map's data on it, which you can save permanently."]

# overwrite existing map automatically?
execute if score .overwrite save_map matches 1 run function bcm:targets_and_crates/save/targets_overwrite with storage bcm