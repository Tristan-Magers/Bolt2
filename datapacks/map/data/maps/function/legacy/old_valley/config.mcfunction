# offset -207 61 -525

# move this to a different file once loading data is setup
data remove storage maps:active {}
# Loading/Misc data
# loadingBox is important, it is where players are teleported to load the map before the game starts.
# spectatorBoundingBox is the area that spectators can fly around before being kicked to lobby.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
# introCutscene is where the cutscene takes place, it is stored as x, y, z, facing.
# wallHeight is max y level that walls can go to. Effectively this is the highest y level the player can stand at with walls.
# disabledItems disables items in CTF, currently only supports walls.

data merge storage maps:active {settings:{\
    loadingBox:"-675 -13 -374",\
    \
    spectatorBoundingBox:{area:"dx=100,dy=50,dz=100",origin:"-697. -14. -421."},\
    spectatorJoinLocation:"-662.5 72 -374.5 90 0",\
    \
    introCutscene:"-662.5 72 -374.5 90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 7,\
    disabledItems:[],\
    \
    mapSize:{x1:-697, y1:-14,  z1:-421,\
             x2:-637, y2:14, z2:-323},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=15,dy=6,dz=7",origin:"-669 -5 -421"}],\
    redSpawnBoundingBox:[{area:"dx=15,dy=6,dz=7",origin:"-668 -5 -333"}],\
    \
    blueSpawn:"-661 -4 -420 0 0",\
    redSpawn:"-661 -4 -328 180 0",\
    \
    ctfInvulnTime:30,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-681 -5 -405",\
    redFlag: "-681 -5 -343",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
]}