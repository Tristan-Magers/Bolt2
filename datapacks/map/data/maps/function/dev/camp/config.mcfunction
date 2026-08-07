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
    loadingBox:"-394.0 2.5 -1430.0",\
    \
    spectatorBoundingBox:{area:"dx=200,dy=50,dz=200",origin:"-423. -5. -1458."},\
    spectatorJoinLocation:"-402.5 8 -1438.5 -45 0",\
    \
    introCutscene:"-402.5 8 -1438.5 -45 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 11,\
    disabledItems:[],\
    \
    mapSize:{x1:-423, y1:-5,  z1:-1458,\
             x2:-352, y2:18, z2:-1390},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=8,dy=8,dz=16",origin:"-364.5 1.0 -1438.5"}],\
    redSpawnBoundingBox:[{area:"dx=16,dy=8,dz=8",origin:"-402.5 1.0 -1400.5"}],\
    \
    blueSpawn:"-359.5 2 -1431.0 90 0",\
    redSpawn:"-395.0 2 -1395.5 180 0",\
    \
    ctfInvulnTime:30,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-371.5 1 -1447.5",\
    redFlag: "-411.5 1 -1407.5",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
    {pos:"-401.5 2 -1398.5", rotation:-90, generator_duration:45, generator_warmup:5},\
    {pos:"-362.5 2 -1437.5", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-385.5 -2 -1421.5", rotation:90, generator_duration:70, generator_warmup:5},\
]}