### THIS CONVERTS MAP DATA FROM AIDEN'S SYSTEM TO SHUBA'S SYSTEM
# copies from "maps:active {}" to "minecraft:bcm map"
# only converts data strictly necessary to open maps in editor
data remove storage bcm map

data modify storage bcm map.intro_camera set from storage maps:active settings.introCutscene

data modify storage bcm map.max_wall_height set from storage maps:active settings.wallHeight

execute store success storage bcm map.disable_walls byte 1 if data storage maps:active settings.disabledItems[0]

data modify storage bcm map.red_spawnpoint set from storage maps:active spawn.redSpawn
data modify storage bcm map.blue_spawnpoint set from storage maps:active spawn.blueSpawn

# map editor only supports 1 bounding box per type; this shrinks the spawn areas on towers
data modify storage bcm map.red_spawn.area set from storage maps:active spawn.redSpawnBoundingBox[0].area
data modify storage bcm map.red_spawn.start set from storage maps:active spawn.redSpawnBoundingBox[0].origin
data modify storage bcm map.blue_spawn.area set from storage maps:active spawn.blueSpawnBoundingBox[0].area
data modify storage bcm map.blue_spawn.start set from storage maps:active spawn.blueSpawnBoundingBox[0].origin

data modify storage bcm map.invuln_ctf set from storage maps:active spawn.ctfInvulnTime
data modify storage bcm map.invuln_infection set from storage maps:active spawn.infectionInvulnTime

data modify storage bcm map.red_flag set from storage maps:active objectives.redFlag
data modify storage bcm map.blue_flag set from storage maps:active objectives.blueFlag

data modify storage bcm map.generators set from storage maps:active gens

data modify storage bcm map.targets set from storage maps:active targets
data modify storage bcm map.crates set from storage maps:active crates

data modify storage bcm map.gates set from storage maps:active gates