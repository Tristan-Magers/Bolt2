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
    loadingBox:"-632 3 -113",\
    \
    spectatorBoundingBox:{area:"dx=100,dy=50,dz=100",origin:"-391. -3. -939."},\
    spectatorJoinLocation:"-632.5 3 -113.5 90 0",\
    \
    introCutscene:"-632.5 3 -113.5 90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 4,\
    disabledItems:[],\
    \
    mapSize:{x1:-656, y1:-6,  z1:-147,\
             x2:-616, y2:14, z2:-86},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=8,dy=12,dz=15",origin:"-364 -4 -889"}],\
    redSpawnBoundingBox:[{area:"dx=15,dy=12,dz=8",origin:"-873 -4 -907"}],\
    \
    blueSpawn:"-623.5 1.0 -136.5 45 0",\
    redSpawn:"-652.5 1.0 -90.5 -135 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:0,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-649 1 -133",\
    redFlag: "-628 1 -95",\
}}

# List of item generators on the map, stored as x, y, z, facing.
# REWORK - 3rd generator needs to have "long" tag
data merge storage maps:active {gens:[\
]}