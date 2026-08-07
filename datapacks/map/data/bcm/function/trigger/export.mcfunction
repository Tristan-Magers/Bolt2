scoreboard players reset @s export_map

execute unless data storage bcm export run return run function bcm:fail/tellraw {input:'"ERROR exporting map: missing map data"'}
execute unless data storage item_structures export run return run function bcm:fail/tellraw {input:'"ERROR exporting map: missing map structure"'}

# size rating text
execute store result score .size .calc run data get storage bcm registry_export.mapSize
execute if score .size .calc matches 0 run data modify storage bcm tmp set value {text:"Very Small",color:"#92d9e3"}
execute if score .size .calc matches 1 run data modify storage bcm tmp set value {text:"Small",color:"#29AEF0"}
execute if score .size .calc matches 2 run data modify storage bcm tmp set value {text:"Medium",color:"#F08B26"}
execute if score .size .calc matches 3 run data modify storage bcm tmp set value {text:"Large",color:"#F02B24"}

data remove block 69420 0 69420 Items
item replace block 69420 0 69420 container.0 with netherite_ingot 1
item modify block 69420 0 69420 container.0 item_structures:export
data remove block 69420 0 69420 Items[0].components.minecraft:custom_data.bleps_map.load_point

data remove storage bcm tmp

loot give @s mine 69420 0 69420
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 2

tellraw @s ["HOW TO SAVE YOUR MAP ITEM:\n1: Use an anvil to name your map\n2: Press ",{keybind:"key.inventory"},", and go to the \"",{translate:"itemGroup.hotbar"},"\" tab.\n3: Choose a row to save to, then press the keys shown.\n4: That's it! Your map item (and everything else in your hotbar) should now appear when you go back to the ",{translate:"itemGroup.hotbar"}," tab."]