## constructs a map object @ storage bcm tmp, containing its bleps-specific data, blocks, doors, and registry
data remove storage bcm tmp

# bleps-specific
data modify storage bcm tmp.map set from storage bcm map

# blocks
data modify storage bcm tmp.structure set from storage item_structures save

# doors
data modify storage bcm tmp.doors set from storage bcm doors

# registry
data modify storage bcm tmp.registry set value {\
    mapName:"Unnamed Map",\
    mapColor:"white",\
    mapIcon:"-",\
    mapTextScale:12f,\
    mapSize:2,\
    mapModes:["ctf","infection","targets","tmi"],\
    isItemMap:true\
}
data modify storage bcm tmp.registry merge from storage bcm registry

# name
$data modify storage bcm tmp.registry.mapName set value "$(mapName)"

# thumbnail
execute unless data storage bcm tmp.registry.mapThumbnail run function bcm:map/get_preset_thumbnail

# calculate text box size with constant 1/6 blocks/char/width
# target 12 width (2 blocks/char)
scoreboard players set #blocks .calc 2
# length of name + padding
execute store result score #chars .calc run data get storage bcm tmp.registry.mapName
scoreboard players add #chars .calc 4
# calculate number of blocks to fit text
scoreboard players operation #blocks .calc *= #chars .calc
# must be odd
scoreboard players add #blocks .calc 1
# scale text to fit 27 blocks if too long
execute if score #blocks .calc matches 28.. run scoreboard players set #width .calc 324000
execute if score #blocks .calc matches 28.. store result storage bcm tmp.registry.mapTextScale float .001 run scoreboard players operation #width .calc /= #blocks .calc
# save number of blocks to trim text box later if too short
# halving to get distance from center to edge
execute if score #blocks .calc matches ..26 store result storage bcm tmp.registry.mapTextBlocks int 0.5 run scoreboard players get #blocks .calc