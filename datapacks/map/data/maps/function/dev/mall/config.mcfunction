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
    loadingBox:"-158.5 -4.0 -897.5",\
    \
    spectatorBoundingBox:{area:"dx=100,dy=40,dz=100",origin:"-198. 2. -919."},\
    spectatorJoinLocation:"-156.5 11.0 -877.5 135 0",\
    \
    introCutscene:"-156.5 11.0 -877.5 135 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 15,\
    disabledItems:[],\
    \
    mapSize:{x1:-201, y1:1,  z1:-922,\
             x2:-122, y2:21, z2:-843},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=12,dy=8,dz=21",origin:"-198.5 6.0 -882.5"}],\
    redSpawnBoundingBox:[{area:"dx=21,dy=8,dz=12",origin:"-161.5 6.0 -919.5"}],\
    \
    blueSpawn:"-194.5 8 -872.5 -90 0",\
    redSpawn:"-151.5 8 -915.5 0 0",\
    \
    ctfInvulnTime:25,\
    infectionInvulnTime:25,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-172.5 5 -854.5",\
    redFlag: "-133.5 5 -893.5",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
    {pos:"-190.5 7 -872.5", rotation:90, generator_duration:45, generator_warmup:5},\
    {pos:"-151.5 7 -911.5", rotation:-180, generator_duration:45, generator_warmup:5},\
    {pos:"-142.5 7 -863.5", rotation:90, generator_duration:70, generator_warmup:5},\
]}