# offset is 381 21 -80
# only parially tested that offset

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
    loadingBox:"-170.5 1 -371.5",\
    \
    spectatorBoundingBox:{area:"dx=-65,dy=28,dz=-97",origin:"-95. -4. -337."},\
    spectatorJoinLocation:"-115 8 -381 45 0",\
    \
    introCutscene:"-134 2 -383 -90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 8,\
    disabledItems:[],\
    \
    mapSize:{x1:-159, y1:-1,  z1:-429,\
             x2:-94, y2:8, z2:-332},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=-9,dy=10,dz=9",origin:"-106. 2. -426."}],\
    redSpawnBoundingBox:[{area:"dx=9,dy=10,dz=-9",origin:"-148. 2. -340."}],\
    \
    blueSpawn:"-108.5 2 -422.5 45 0",\
    redSpawn:"-144.5 2 -342.5 -135 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:40,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-149 3 -415",\
    redFlag: "-105 3 -351",\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-140 2 -348", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-114 2 -418", rotation:180, generator_duration:45, generator_warmup:5},\
]}

# targets, generated with /function game:map/builder/targets {x_min, x_max, etc.}
data merge storage maps:active {targets:[{pos:"-157 5 -410"},{pos:"-155 5 -415"},{pos:"-153 1 -409"},{pos:"-152 3 -402"},{pos:"-152 5 -396"},{pos:"-150 5 -393"},{pos:"-150 5 -388"},{pos:"-149 3 -391"},{pos:"-149 5 -412"},{pos:"-149 7 -419"},{pos:"-147 0 -395"},{pos:"-147 5 -405"},{pos:"-146 1 -387"},{pos:"-145 1 -409"},{pos:"-145 5 -378"},{pos:"-143 1 -390"},{pos:"-142 4 -394"},{pos:"-142 5 -381"},{pos:"-141 1 -384"},{pos:"-141 2 -370"},{pos:"-141 3 -365"},{pos:"-141 5 -411"},{pos:"-140 3 -375"},{pos:"-140 3 -356"},{pos:"-140 4 -406"},{pos:"-137 0 -387"},{pos:"-137 3 -409"},{pos:"-137 5 -419"},{pos:"-136 0 -401"},{pos:"-136 3 -362"},{pos:"-135 1 -371"},{pos:"-135 3 -350"},{pos:"-135 5 -376"},{pos:"-134 0 -392"},{pos:"-134 1 -367"},{pos:"-133 2 -405"},{pos:"-133 2 -385"},{pos:"-133 3 -413"},{pos:"-133 5 -391"},{pos:"-132 0 -409"},{pos:"-131 0 -389"},{pos:"-131 5 -365"},{pos:"-130 0 -373"},{pos:"-130 1 -398"},{pos:"-130 1 -379"},{pos:"-129 0 -361"},{pos:"-129 5 -390"},{pos:"-129 5 -376"},{pos:"-128 0 -407"},{pos:"-128 3 -420"},{pos:"-128 3 -413"},{pos:"-128 3 -346"},{pos:"-127 4 -383"},{pos:"-126 1 -369"},{pos:"-126 3 -352"},{pos:"-125 0 -356"},{pos:"-125 5 -390"},{pos:"-125 7 -425"},{pos:"-124 0 -393"},{pos:"-124 0 -376"},{pos:"-124 5 -375"},{pos:"-123 0 -380"},{pos:"-123 5 -401"},{pos:"-123 7 -418"},{pos:"-122 3 -387"},{pos:"-121 0 -372"},{pos:"-121 2 -381"},{pos:"-121 2 -360"},{pos:"-121 3 -415"},{pos:"-121 3 -353"},{pos:"-120 5 -375"},{pos:"-119 0 -366"},{pos:"-119 1 -399"},{pos:"-118 0 -380"},{pos:"-118 3 -357"},{pos:"-118 5 -390"},{pos:"-117 5 -347"},{pos:"-116 3 -408"},{pos:"-114 2 -396"},{pos:"-114 3 -404"},{pos:"-113 4 -360"},{pos:"-113 5 -352"},{pos:"-112 4 -373"},{pos:"-111 5 -388"},{pos:"-110 1 -379"},{pos:"-110 1 -356"},{pos:"-110 2 -367"},{pos:"-110 5 -350"},{pos:"-108 0 -371"},{pos:"-107 5 -361"},{pos:"-105 1 -363"},{pos:"-105 2 -376"},{pos:"-105 5 -353"},{pos:"-105 7 -346"},{pos:"-104 5 -372"},{pos:"-102 4 -359"},{pos:"-101 5 -378"},{pos:"-100 1 -356"},{pos:"-100 5 -366"},{pos:"-98 5 -356"},{pos:"-98 5 -350"}]}

data merge storage maps:active {crates:[{spawn_chance:1,pos:"-127 2 -420"},{spawn_chance:1,pos:"-137 4 -420"},{spawn_chance:1,pos:"-158 3 -406"},{spawn_chance:1,pos:"-130 0 -398"},{spawn_chance:1,pos:"-123 4 -401"},{spawn_chance:1,pos:"-114 2 -409"},{spawn_chance:1,pos:"-119 0 -400"},{spawn_chance:1,pos:"-130 -1 -407"},{spawn_chance:2,pos:"-128 -1 -413"},{spawn_chance:2,pos:"-133 -1 -404"},{spawn_chance:2,pos:"-111 1 -394"},{spawn_chance:2,pos:"-155 4 -399"},{spawn_chance:2,pos:"-148 -1 -395"},{spawn_chance:2,pos:"-141 3 -394"},{spawn_chance:2,pos:"-127 4 -389"},{spawn_chance:2,pos:"-135 -1 -389"},{spawn_chance:2,pos:"-127 4 -383"},{spawn_chance:2,pos:"-147 0 -385"},{spawn_chance:2,pos:"-146 4 -379"},{spawn_chance:2,pos:"-137 4 -391"},{spawn_chance:2,pos:"-114 2 -389"},{spawn_chance:2,pos:"-125 0 -385"},{spawn_chance:2,pos:"-109 0 -380"},{spawn_chance:2,pos:"-134 0 -381"},{spawn_chance:3,pos:"-136 -1 -385"},{spawn_chance:3,pos:"-120 4 -388"},{spawn_chance:3,pos:"-142 4 -380"},{spawn_chance:3,pos:"-130 -1 -388"},{spawn_chance:3,pos:"-134 4 -375"},{spawn_chance:3,pos:"-123 -1 -379"},{spawn_chance:3,pos:"-115 -1 -379"},{spawn_chance:3,pos:"-112 4 -386"},{spawn_chance:2,pos:"-153 4 -388"},{spawn_chance:2,pos:"-120 4 -376"},{spawn_chance:2,pos:"-101 4 -371"},{spawn_chance:2,pos:"-111 1 -366"},{spawn_chance:2,pos:"-102 0 -365"},{spawn_chance:2,pos:"-121 -1 -363"},{spawn_chance:2,pos:"-130 1 -377"},{spawn_chance:2,pos:"-139 2 -375"},{spawn_chance:1,pos:"-144 4 -376"},{spawn_chance:1,pos:"-140 0 -383"},{spawn_chance:1,pos:"-117 -1 -376"},{spawn_chance:1,pos:"-124 -1 -374"},{spawn_chance:1,pos:"-119 -1 -382"},{spawn_chance:1,pos:"-114 2 -375"},{spawn_chance:1,pos:"-100 4 -377"},{spawn_chance:1,pos:"-107 -1 -371"},{spawn_chance:2,pos:"-141 1 -370"},{spawn_chance:2,pos:"-129 0 -372"},{spawn_chance:2,pos:"-118 0 -366"},{spawn_chance:2,pos:"-116 0 -356"},{spawn_chance:2,pos:"-104 0 -360"},{spawn_chance:2,pos:"-99 4 -367"},{spawn_chance:2,pos:"-112 3 -371"},{spawn_chance:2,pos:"-114 4 -352"},{spawn_chance:1,pos:"-97 3 -359"},{spawn_chance:1,pos:"-105 4 -351"},{spawn_chance:1,pos:"-99 4 -346"},{spawn_chance:1,pos:"-111 0 -360"},{spawn_chance:1,pos:"-124 0 -368"},{spawn_chance:1,pos:"-126 4 -374"},{spawn_chance:1,pos:"-128 -1 -360"},{spawn_chance:1,pos:"-121 -1 -355"}]}