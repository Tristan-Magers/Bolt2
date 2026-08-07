execute as @e[type=block_display,tag=red_flag] at @s run setblock ~ ~ ~ red_banner strict
execute as @e[type=block_display,tag=blue_flag] at @s run setblock ~ ~ ~ blue_banner strict
execute as @e[type=marker,tag=editor_target] at @s run setblock ~ ~ ~ target strict
execute as @e[type=interaction,tag=editor_crate] at @s run setblock ~ ~ ~ deepslate_copper_ore strict
scoreboard players set .enabled select_area 1

# get current structure
function bcm:map/save/skip_blocks_macro with storage bcm

# copy data to export path
data modify storage bcm export set from storage bcm map
data modify storage bcm registry_export set from storage bcm registry
data modify storage item_structures export set from storage item_structures save

# tell players to export
tellraw @a ["YOU'RE NOT DONE YET! Click ",{underlined:true,click_event:{action:"run_command",command:"trigger export_map set 1"},text:"here"}," or type \"/trigger export_map\" to get an item with the map's data on it, which you can save permanently."]

# overwrite existing map automatically?
execute if score .overwrite save_map matches 1 run data modify storage bcm macro.mapName set from storage bcm mapNameEditing
execute if score .overwrite save_map matches 1 run function bcm:map/constructor with storage bcm macro
execute if score .overwrite save_map matches 1 run function bcm:map/overwrite_skip_blocks with storage bcm macro