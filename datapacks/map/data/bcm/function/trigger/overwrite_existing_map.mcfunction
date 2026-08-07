scoreboard players reset @s existing_map_response
# assert player is still holding the map item
#
# this should never fail, unless:
# (1) while inside the dialog, the player somehow switched slots, which is supposed to be impossible
#     > this would imply that dialog inputs have a race condition with selecting hotbar slots (or that the player is hacking)
# (2) bleps code cleared the item from the player's hand, after they clicked on it, but before they closed the dialog
#     > this would imply that YOU'RE FUCKED
execute unless items entity @s weapon.mainhand netherite_ingot[minecraft:custom_data~{bleps_map:{}}] run return run function bcm:fail/title {title:'"FAILED to import"',subtitle:'"No longer holding the map item"'}

## get new map data
# bleps-specific map data
data modify storage bcm map set from entity @s SelectedItem.components."minecraft:custom_data".bleps_map
data remove storage bcm map.load_point
# blocks
data remove storage item_structures save
data modify storage item_structures save set from entity @s SelectedItem.components."minecraft:custom_data".structure
# doors
data remove storage bcm doors
data modify storage bcm doors set from entity @s SelectedItem.components."minecraft:custom_data".doors
# registry
data remove storage bcm registry
data modify storage bcm registry set from entity @s SelectedItem.components."minecraft:custom_data".registry

## new map object
data modify storage bcm macro.mapName set from entity @s SelectedItem.components."minecraft:custom_name"
function bcm:map/constructor with storage bcm macro
function bcm:map/overwrite with storage bcm macro