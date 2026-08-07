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
    loadingBox:"-146.5 2 -652.5",\
    \
    spectatorBoundingBox:{area:"dx=55,dy=27,dz=86",origin:"-157. 1. -696."},\
    spectatorJoinLocation:"-137 14 -653 -90 0",\
    \
    introCutscene:"-138 14 -654 -90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 15,\
    disabledItems:[],\
    \
    mapSize:{x1:-156, y1:1,  z1:-695,\
             x2:-102, y2:28, z2:-610},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=-12,dy=8,dz=7",origin:"-126 11 -685"}],\
    redSpawnBoundingBox:[{area:"dx=12,dy=8,dz=7",origin:"-126 11 -621"}],\
    \
    blueSpawn:"-121.5 11 -689.5 52 0",\
    redSpawn:"-121.5 11 -617.5 128 0",\
    \
    ctfInvulnTime:30,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-137 6 -685",\
    redFlag: "-137 6 -623",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
    {pos:"-126 11 -687", rotation:-90, generator_duration:45, generator_warmup:5},\
    {pos:"-126 11 -621", rotation:-90, generator_duration:45, generator_warmup:5},\
    {pos:"-126 6 -654", rotation:90, generator_duration:70, generator_warmup:5},\
]}