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
    loadingBox:"-365.5 -2.0 144.5",\
    \
    spectatorBoundingBox:{area:"dx=46,dy=31,dz=-99",origin:"-406. -5. 195."},\
    spectatorJoinLocation:"-371 11 144 90 0",\
    \
    introCutscene:"-360 13 144 90 0",\
    \
    tickingScript: "official/valley/scripts/tick",\
    \
    wallHeight: 18,\
    disabledItems:[],\
    \
    mapSize:{x1:-409, y1:-3,  z1:96,\
             x2:-357, y2:26, z2:192},\
}}

# Spawn, the bounding box is used for invlun time and afk detection.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    blueSpawnBoundingBox:[{area:"dx=15,dy=10,dz=-10",origin:"-374. 8. 105."}],\
    redSpawnBoundingBox:[{area:"dx=15,dy=10,dz=10",origin:"-374. 8. 185."}],\
    \
    blueSpawn:"-368.5 8 98.5 20 0",\
    redSpawn:"-368.5 8 190.5 160 0",\
    \
    ctfInvulnTime:40,\
    infectionInvulnTime:40,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-392 5 114",\
    redFlag: "-392 5 174",\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-371 8 185", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-371 8 103", rotation:180, generator_duration:45, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-405 9 113"},{pos:"-405 9 174"},{pos:"-404 9 121"},{pos:"-404 9 167"},{pos:"-402 9 130"},{pos:"-402 9 141"},{pos:"-402 9 147"},{pos:"-402 9 158"},{pos:"-402 13 135"},{pos:"-402 13 153"},{pos:"-401 4 117"},{pos:"-401 4 171"},{pos:"-401 7 112"},{pos:"-401 7 176"},{pos:"-401 9 137"},{pos:"-401 9 151"},{pos:"-400 4 126"},{pos:"-400 4 162"},{pos:"-400 13 140"},{pos:"-400 13 148"},{pos:"-398 8 121"},{pos:"-398 8 167"},{pos:"-396 7 174"},{pos:"-396 15 142"},{pos:"-396 15 146"},{pos:"-395 7 128"},{pos:"-395 8 136"},{pos:"-395 8 152"},{pos:"-395 9 107"},{pos:"-395 9 144"},{pos:"-394 7 115"},{pos:"-394 7 160"},{pos:"-394 7 173"},{pos:"-392 4 123"},{pos:"-392 4 165"},{pos:"-392 9 107"},{pos:"-392 9 181"},{pos:"-391 9 144"},{pos:"-391 12 186"},{pos:"-391 15 143"},{pos:"-390 7 115"},{pos:"-390 7 173"},{pos:"-389 9 107"},{pos:"-388 8 144"},{pos:"-387 11 128"},{pos:"-386 4 126"},{pos:"-386 4 162"},{pos:"-386 6 115"},{pos:"-386 6 138"},{pos:"-386 6 150"},{pos:"-386 6 173"},{pos:"-385 4 120"},{pos:"-385 4 133"},{pos:"-385 4 155"},{pos:"-385 4 168"},{pos:"-385 7 141"},{pos:"-385 7 147"},{pos:"-385 8 112"},{pos:"-385 8 176"},{pos:"-385 12 124"},{pos:"-385 12 164"},{pos:"-384 9 181"},{pos:"-384 10 105"},{pos:"-383 11 128"},{pos:"-383 11 160"},{pos:"-383 12 101"},{pos:"-383 12 187"},{pos:"-381 8 112"},{pos:"-381 9 144"},{pos:"-381 9 178"},{pos:"-380 3 126"},{pos:"-380 3 162"},{pos:"-379 10 128"},{pos:"-379 10 160"},{pos:"-378 4 112"},{pos:"-378 4 117"},{pos:"-378 4 171"},{pos:"-378 4 176"},{pos:"-377 9 180"},{pos:"-377 11 124"},{pos:"-377 11 164"},{pos:"-376 2 142"},{pos:"-376 2 146"},{pos:"-376 3 130"},{pos:"-376 3 158"},{pos:"-376 6 138"},{pos:"-376 6 150"},{pos:"-376 9 108"},{pos:"-376 11 142"},{pos:"-376 11 146"},{pos:"-375 9 179"},{pos:"-375 10 128"},{pos:"-375 10 160"},{pos:"-374 3 136"},{pos:"-374 3 152"},{pos:"-373 10 111"},{pos:"-373 13 121"},{pos:"-373 13 167"},{pos:"-371 9 143"},{pos:"-371 9 145"},{pos:"-370 13 119"},{pos:"-370 13 123"},{pos:"-370 13 165"},{pos:"-370 13 169"},{pos:"-369 4 129"},{pos:"-369 4 159"},{pos:"-368 9 109"},{pos:"-368 9 178"},{pos:"-367 10 140"},{pos:"-367 10 148"},{pos:"-366 11 124"},{pos:"-366 11 144"},{pos:"-366 11 164"},{pos:"-365 11 113"},{pos:"-365 11 175"},{pos:"-364 9 135"},{pos:"-364 9 153"},{pos:"-363 13 140"},{pos:"-363 13 148"},{pos:"-361 9 117"},{pos:"-361 9 131"},{pos:"-361 9 157"},{pos:"-361 9 171"},{pos:"-360 12 125"},{pos:"-360 12 163"},{pos:"-360 15 144"},{pos:"-359 11 113"},{pos:"-359 11 175"}]}

data merge storage maps:active {crates:[{spawn_chance:1,pos:"-405 8 108"},{spawn_chance:1,pos:"-371 12 121"},{spawn_chance:1,pos:"-378 3 117"},{spawn_chance:1,pos:"-383 11 101"},{spawn_chance:1,pos:"-390 3 134"},{spawn_chance:1,pos:"-392 3 123"},{spawn_chance:1,pos:"-365 10 124"},{spawn_chance:1,pos:"-376 0 145"},{spawn_chance:2,pos:"-382 3 132"},{spawn_chance:2,pos:"-381 2 123"},{spawn_chance:2,pos:"-405 8 121"},{spawn_chance:2,pos:"-404 5 129"},{spawn_chance:2,pos:"-364 3 120"},{spawn_chance:2,pos:"-395 7 129"},{spawn_chance:2,pos:"-377 2 127"},{spawn_chance:2,pos:"-390 8 140"},{spawn_chance:2,pos:"-387 10 126"},{spawn_chance:2,pos:"-402 12 135"},{spawn_chance:2,pos:"-360 11 126"},{spawn_chance:2,pos:"-360 14 144"},{spawn_chance:2,pos:"-358 11 113"},{spawn_chance:2,pos:"-387 6 147"},{spawn_chance:2,pos:"-366 4 135"},{spawn_chance:2,pos:"-378 9 126"},{spawn_chance:3,pos:"-376 1 138"},{spawn_chance:3,pos:"-391 8 146"},{spawn_chance:3,pos:"-398 8 140"},{spawn_chance:3,pos:"-382 3 139"},{spawn_chance:3,pos:"-392 14 144"},{spawn_chance:3,pos:"-403 8 138"},{spawn_chance:3,pos:"-367 8 140"},{spawn_chance:3,pos:"-380 8 144"},{spawn_chance:2,pos:"-403 8 151"},{spawn_chance:2,pos:"-397 8 149"},{spawn_chance:2,pos:"-381 3 158"},{spawn_chance:2,pos:"-369 3 163"},{spawn_chance:2,pos:"-400 3 162"},{spawn_chance:2,pos:"-367 8 149"},{spawn_chance:2,pos:"-391 3 156"},{spawn_chance:2,pos:"-402 12 152"},{spawn_chance:1,pos:"-373 2 153"},{spawn_chance:1,pos:"-374 9 142"},{spawn_chance:1,pos:"-384 3 163"},{spawn_chance:1,pos:"-370 8 145"},{spawn_chance:1,pos:"-375 2 162"},{spawn_chance:1,pos:"-392 3 165"},{spawn_chance:1,pos:"-365 4 155"},{spawn_chance:1,pos:"-371 4 149"},{spawn_chance:2,pos:"-395 7 159"},{spawn_chance:2,pos:"-376 9 164"},{spawn_chance:2,pos:"-401 8 184"},{spawn_chance:2,pos:"-381 2 165"},{spawn_chance:2,pos:"-401 3 171"},{spawn_chance:2,pos:"-371 3 168"},{spawn_chance:2,pos:"-398 6 176"},{spawn_chance:2,pos:"-405 3 165"},{spawn_chance:1,pos:"-383 10 163"},{spawn_chance:1,pos:"-360 8 159"},{spawn_chance:1,pos:"-371 12 165"},{spawn_chance:1,pos:"-379 3 171"},{spawn_chance:1,pos:"-386 3 169"},{spawn_chance:1,pos:"-398 7 166"},{spawn_chance:1,pos:"-366 3 166"},{spawn_chance:1,pos:"-392 6 174"}]}