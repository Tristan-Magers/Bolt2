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
    loadingBox:"-359 -5 -902",\
    \
    spectatorBoundingBox:{area:"dx=100,dy=50,dz=100",origin:"-391. -3. -939."},\
    spectatorJoinLocation:"-359.5 7 -902.5 -135 0",\
    \
    introCutscene:"-359.5 7 -902.5 -135 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 10,\
    disabledItems:[],\
    \
    mapSize:{x1:-391, y1:-3,  z1:-939,\
             x2:-323, y2:14, z2:-869},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=8,dy=12,dz=15",origin:"-364 -4 -889"}],\
    redSpawnBoundingBox:[{area:"dx=15,dy=12,dz=8",origin:"-873 -4 -907"}],\
    \
    blueSpawn:"-361.0 1.0 -881.5 -90 0",\
    redSpawn:"-380.5 1.0 -901.0 180 0",\
    \
    ctfInvulnTime:30,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-330 4 -892",\
    redFlag: "-371 4 -933",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
    {pos:"-356 -2 -876", rotation:90, generator_duration:45, generator_warmup:5},\
    {pos:"-387 -2 -907", rotation:0, generator_duration:45, generator_warmup:5},\
]}