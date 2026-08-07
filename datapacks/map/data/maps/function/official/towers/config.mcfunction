# offset is -74 60 119


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
    loadingBox:"-128.5 3.0 127.5 0 0",\
    \
    spectatorBoundingBox:{area:"dx=-37,dy=30,dz=76",origin:"-54. -62. -16."},\
    spectatorJoinLocation:"-155 8 140 -90 0",\
    \
    introCutscene:"-158 5 140 -90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 12,\
    disabledItems:[],\
    \
    mapSize:{x1:-163, y1:-2,  z1:105,\
             x2:-129, y2:14, z2:176},\
}}


# Spawn, the bounding box is used for invlun time and afk detection.    official/valley/scripts/tick
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    redSpawnBoundingBox:[{area:"dx=7,dy=4,dz=7",origin:"-160. 9.5 109."},{area:"dx=4,dy=4,dz=2.5",origin:"-158. 9.5 116."},{area:"dx=2.5,dy=4,dz=6",origin:"-152. 9.5 109."}],\
    blueSpawnBoundingBox:[{area:"dx=7,dy=4,dz=-7",origin:"-160. 9.5 172."},{area:"dx=2.5,dy=4,dz=-7",origin:"-152. 9.5 172."},{area:"dx=4,dy=4,dz=-3",origin:"-158. 9.5 165."}],\
    \
    blueSpawn:"-157.5 10 170.5 -135 0",\
    redSpawn:"-157.5 10 110.5 -45 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:70,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-138 2 168",\
    redFlag: "-138 2 112",\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-153 10 165", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-153 10 115", rotation:180, generator_duration:45, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-162 2 129"},{pos:"-162 2 151"},{pos:"-162 4 119"},{pos:"-162 4 161"},{pos:"-162 5 139"},{pos:"-162 5 141"},{pos:"-162 8 126"},{pos:"-162 8 154"},{pos:"-161 4 125"},{pos:"-161 4 155"},{pos:"-161 8 129"},{pos:"-161 8 151"},{pos:"-158 3 132"},{pos:"-158 3 148"},{pos:"-157 1 140"},{pos:"-157 6 125"},{pos:"-157 6 155"},{pos:"-157 8 128"},{pos:"-156 4 136"},{pos:"-156 4 144"},{pos:"-156 6 155"},{pos:"-156 8 128"},{pos:"-156 8 152"},{pos:"-156 10 129"},{pos:"-156 10 151"},{pos:"-155 4 140"},{pos:"-155 6 125"},{pos:"-155 6 155"},{pos:"-155 8 128"},{pos:"-155 8 152"},{pos:"-154 4 140"},{pos:"-153 1 133"},{pos:"-153 1 147"},{pos:"-153 8 129"},{pos:"-153 8 151"},{pos:"-152 3 139"},{pos:"-152 3 141"},{pos:"-152 8 126"},{pos:"-152 8 154"},{pos:"-151 1 135"},{pos:"-151 1 145"},{pos:"-151 3 129"},{pos:"-151 3 151"},{pos:"-151 4 117"},{pos:"-151 4 140"},{pos:"-151 4 163"},{pos:"-150 4 121"},{pos:"-150 4 159"},{pos:"-150 8 128"},{pos:"-150 8 152"},{pos:"-149 8 116"},{pos:"-149 8 117"},{pos:"-149 8 119"},{pos:"-149 8 161"},{pos:"-149 8 163"},{pos:"-148 1 133"},{pos:"-148 1 147"},{pos:"-148 11 126"},{pos:"-148 11 154"},{pos:"-147 0 140"},{pos:"-147 11 129"},{pos:"-147 11 151"},{pos:"-146 0 140"},{pos:"-146 4 114"},{pos:"-146 4 119"},{pos:"-146 4 127"},{pos:"-146 4 153"},{pos:"-146 4 161"},{pos:"-146 4 166"},{pos:"-146 8 107"},{pos:"-146 8 173"},{pos:"-145 11 126"},{pos:"-145 11 129"},{pos:"-145 11 151"},{pos:"-145 11 154"},{pos:"-144 4 122"},{pos:"-144 4 158"},{pos:"-144 8 111"},{pos:"-144 8 169"},{pos:"-143 8 113"},{pos:"-143 8 117"},{pos:"-143 8 119"},{pos:"-143 8 161"},{pos:"-143 8 163"},{pos:"-143 8 167"},{pos:"-142 4 127"},{pos:"-142 4 153"},{pos:"-141 1 134"},{pos:"-141 1 146"},{pos:"-140 4 108"},{pos:"-140 4 121"},{pos:"-140 4 128"},{pos:"-140 4 152"},{pos:"-140 4 159"},{pos:"-140 4 172"},{pos:"-140 8 106"},{pos:"-140 8 174"},{pos:"-139 10 128"},{pos:"-139 10 152"},{pos:"-138 1 136"},{pos:"-138 1 144"},{pos:"-138 4 119"},{pos:"-138 4 161"},{pos:"-138 8 128"},{pos:"-138 8 152"},{pos:"-137 1 133"},{pos:"-137 1 147"},{pos:"-137 4 124"},{pos:"-137 4 140"},{pos:"-137 4 156"},{pos:"-136 8 116"},{pos:"-136 8 119"},{pos:"-136 8 161"},{pos:"-136 8 164"},{pos:"-135 4 109"},{pos:"-135 4 121"},{pos:"-135 4 159"},{pos:"-135 4 171"},{pos:"-134 4 114"},{pos:"-134 4 166"},{pos:"-133 3 127"},{pos:"-133 3 153"},{pos:"-132 8 107"},{pos:"-132 8 173"},{pos:"-131 5 121"},{pos:"-131 5 159"},{pos:"-131 8 110"},{pos:"-131 8 170"}]}

data merge storage maps:active {crates:[{spawn_chance:1,pos:"-140 0 142"},{spawn_chance:1,pos:"-133 2 162"},{spawn_chance:1,pos:"-151 3 158"},{spawn_chance:1,pos:"-131 3 168"},{spawn_chance:1,pos:"-157 7 152"},{spawn_chance:1,pos:"-159 3 158"},{spawn_chance:1,pos:"-161 0 149"},{spawn_chance:1,pos:"-153 0 143"},{spawn_chance:2,pos:"-151 0 138"},{spawn_chance:2,pos:"-151 0 146"},{spawn_chance:2,pos:"-141 3 153"},{spawn_chance:2,pos:"-146 3 158"},{spawn_chance:2,pos:"-162 0 147"},{spawn_chance:2,pos:"-150 0 134"},{spawn_chance:2,pos:"-161 0 132"},{spawn_chance:2,pos:"-151 7 152"},{spawn_chance:2,pos:"-155 0 148"},{spawn_chance:2,pos:"-137 7 153"},{spawn_chance:2,pos:"-144 10 154"},{spawn_chance:2,pos:"-149 10 152"},{spawn_chance:2,pos:"-137 4 140"},{spawn_chance:2,pos:"-163 7 151"},{spawn_chance:2,pos:"-156 3 163"},{spawn_chance:2,pos:"-137 0 150"},{spawn_chance:3,pos:"-157 0 140"},{spawn_chance:3,pos:"-147 -1 140"},{spawn_chance:3,pos:"-143 0 134"},{spawn_chance:3,pos:"-151 0 142"},{spawn_chance:3,pos:"-162 4 140"},{spawn_chance:3,pos:"-161 0 134"},{spawn_chance:3,pos:"-143 0 143"},{spawn_chance:3,pos:"-137 0 138"},{spawn_chance:2,pos:"-133 0 132"},{spawn_chance:2,pos:"-132 0 147"},{spawn_chance:2,pos:"-138 3 161"},{spawn_chance:2,pos:"-131 7 174"},{spawn_chance:2,pos:"-140 3 165"},{spawn_chance:2,pos:"-161 3 161"},{spawn_chance:2,pos:"-148 3 153"},{spawn_chance:2,pos:"-151 3 164"},{spawn_chance:1,pos:"-161 7 128"},{spawn_chance:1,pos:"-140 3 126"},{spawn_chance:1,pos:"-146 3 119"},{spawn_chance:1,pos:"-133 2 126"},{spawn_chance:1,pos:"-137 7 127"},{spawn_chance:1,pos:"-132 3 114"},{spawn_chance:1,pos:"-146 7 126"},{spawn_chance:1,pos:"-158 0 129"},{spawn_chance:2,pos:"-151 3 117"},{spawn_chance:2,pos:"-142 7 129"},{spawn_chance:2,pos:"-149 4 140"},{spawn_chance:2,pos:"-131 3 123"},{spawn_chance:2,pos:"-137 0 130"},{spawn_chance:2,pos:"-143 3 128"},{spawn_chance:2,pos:"-146 3 122"},{spawn_chance:2,pos:"-159 0 137"},{spawn_chance:1,pos:"-140 3 121"},{spawn_chance:1,pos:"-132 7 107"},{spawn_chance:1,pos:"-138 3 112"},{spawn_chance:1,pos:"-152 7 126"},{spawn_chance:1,pos:"-145 7 106"},{spawn_chance:1,pos:"-141 3 115"},{spawn_chance:1,pos:"-139 3 118"},{spawn_chance:1,pos:"-148 3 129"}]}