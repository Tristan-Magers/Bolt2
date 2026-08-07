# refresh map list
data remove storage maps:list maps

# interally random map is stored as a map
data modify storage maps:list maps append value {\
    mapName:"RANDOM",\
    mapColor:"#97C4DE",\
    mapIcon:"?",\
    mapTextScale:11.5,\
    mapAuthors:[{"text":"idk ask them"}],\
    mapSize:-1,\
    mapModes:["ctf","infection","targets","tmi"],\
    mapFolder:"divide",\
    mapPack:"official",\
    mapThumbnail:{blocks:[I;425984,1,65538,3,2,1,2,1,2,4,2,4,2,4,2,1212416,3,2,3,2,4,2,4,2,4,2,1,2,1,2,3,2,1212416,4,2,4,65538,1,2,5,2,3,2,3,2,1,2,1212416,98306,5,2,3,2,3,131074,3,2,32774,0,6,622592,4,2,7,2,4,65538,4,131074,3,2,3,2,5,131074,1,2,3,2,3,2,3,2,3,65538,3,2,3,2,3,2,1,2,3,2,1,2,1,2,1,2,1,2,7,2,4,65538,3,2,4,65538,3,2,5,65538,3,2,1,2,3,2,3,2,4,2,4,2,4,2,3,2,3,2,1,2,3,2,3,2,5,2,4,2,3,2,3,2,1,2,1,2,4,65538,5,2,3,2,4,2,8,65538,3,2,1,2,1,2,3,2,4,2,4,2,3,2,3,2,3,2,4,2,4,2,3,2,1,65538,4,2,7,65538,3,2,3,2,1,2,4,2,5,2,3,2,4,65538,3,2,9,2,1,2,0,2,1,2,3,2,4,2,4,2,4,2,4,2,4,2,3,2,1,2,4,2,3,65538,7,2,7,2,7,2,4,2,5,65538,4,65538,5,2,4,2,1,2,3,65538,8,2,1,2,3,2,4,2,4,2,7,2,7,2,4,65538,3,2,1,2,3,2,4,2,3,2,5,2,7,2,4,2,3,131074,4,2,5,2,1,2,4,2,1,2,3,2,3,2,3,65538,5,2,4,2,7,2,7,2,3,2,7,2,3,2,4,2,3,65538,3,2,4,2,3,2,4,2,3,2,3,131074,4,2,1,65538,3,2,4,131074,3,2,5,65538,4,2,7,2,3,2,7,2,7,2,3,2,4,2,3,65538,3,2,4,2,3,131074,1,65538,3,2,3,2,4,2,1,2,1,2,3,2,4,2,4,65538,3,2,5,2,3,2,4,2,7,2,7,2,4,2,3,2,1,2,4,131074,3,2,4,2,3,2,8,2,5,65538,3,2,1,2,1,2,9,2,4,2,5,2,3,2,3,2,4,2,4,2,4,2,4,2,4,2,3,2,4,2,3,2,3,2,3,2,4,2,1,2,5,2,3,2,4,2,9,65538,5,2,3,2,4,2,1,2,9,2,8,2,8,2,4,2,4,2,4,2,1,2,3,2,3,2,3,2,4,2,3,2,3,2,3,2,1,2,4,2,3,2,4,2,3,2,3,2,4,2,3,2,5,2,3,2,3,2,4,2,3,2,3,2,8,2,1,2,3,2,3,2,5,2,4,2,4,2,4,2,4,2,5,2,5,2,5,2,1,2,1,2,4,65538,5,2,1,2,4,2,3,65538,3,2,3,2,4,2,7,2,1867776,32769,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,32769,294912,32769,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,32769,294912,32769,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,32769,294912,1409025,1933312],index:["air","black_concrete","black_wool","coal_block","obsidian","black_concrete_powder","polished_deepslate","crying_obsidian","blackstone","polished_blackstone","mud"],size:[2,21,27]},\
}

# register normal maps
function maps:map_registry

# register item maps
data modify storage maps:list maps append from storage bcm maps[].registry

# custom random
data modify storage maps:list maps[].enabled set value true

kill @e[type=marker,tag=map_icon_builder]
summon marker 16.5 -63.5 -492.5 {Tags:["map_icon_builder"]}

bossbar add rebuild_menu {text:"Rebuilding Menu...",color:yellow}
execute store result storage macro map_id int 1 store result bossbar rebuild_menu value run scoreboard players set .map_icon_counter .data 0
execute store result score .map_count .data store result bossbar rebuild_menu max run data get storage maps:list maps
bossbar set rebuild_menu players @a
bossbar set rebuild_menu style progress
bossbar set rebuild_menu visible true

scoreboard players set .print_messages item_structures 0

execute as @e[tag=map_icon_builder] at @s run function game:menu/rebuild_menu_macro with storage macro