# get map name
data remove storage bcm macro
data modify storage bcm macro.mapName set from entity @s SelectedItem.components.minecraft:custom_name 

# show dialog
scoreboard players enable @s existing_map_response
execute store success score .success existing_map_response run function bcm:dialog/overwrite_existing_map_macro with storage bcm macro
execute if score .success existing_map_response matches 1 run return 1

# catch error
trigger existing_map_response set 0
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}