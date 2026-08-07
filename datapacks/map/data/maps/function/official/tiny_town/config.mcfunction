#offset is -148 49 46
#partially tested

data remove storage maps:active {}
# Loading/Misc data
# loadingBox is important, it is where players are teleported to load the map before the game starts.
# spectatorBoundingBox is the area that spectators can fly around before being kicked to lobby.
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
# introCutscene is where the cutscene takes place, it is stored as x, y, z, facing.
# wallHeight is max y level that walls can go to. Effectively this is the highest y level the player can stand at with walls.
# disabledItems disables items in CTF, currently only supports walls.

data merge storage maps:active {settings:{\
    loadingBox:"-368.5 -1 -385.5 0 0",\
    \
    spectatorBoundingBox:{area:"dx=41,dy=28,dz=47",origin:"-405. -9. -410."},\
    spectatorJoinLocation:"-374 8 -385 90 0",\
    \
    introCutscene:"-393 2.5 -386 -90 0",\
    \
    tickingScript: "",\
    \
    wallHeight: 12,\
    disabledItems:[],\
    \
    mapSize:{x1:-399, y1:-6,  z1:-363,\
             x2:-370, y2:10, z2:-409},\
}}


# Spawn, the bounding box is used for invlun time and afk detection.    official/valley/scripts/tick
# The bounding box is x, y, z, dx, dy, dz. IE., a position and a volume
data merge storage maps:active {spawn:{\
    redSpawnBoundingBox:[{area:"dx=-5,dy=-10,dz=4.5",origin:"-374. 9. -410."}],\
    blueSpawnBoundingBox:[{area:"dx=-5,dy=-10,dz=-4.5",origin:"-374. 9. -362."}],\
    \
    blueSpawn:"-376.5 4 -362.5 180 0",\
    redSpawn:"-376.5 4 -408.5 0 0",\
    \
    ctfInvulnTime:41,\
    infectionInvulnTime:41,\
}}

# Flags and the infection generator
data merge storage maps:active {objectives:{\
    blueFlag: "-389 -2 -370",\
    redFlag: "-389 -2 -402",\
}}

# List of item generators on the map, stored as x, y, z, facing.
data merge storage maps:active {gens:[\
    {pos:"-375 4 -366", rotation:0, generator_duration:45, generator_warmup:5},\
    {pos:"-375 4 -406", rotation:180, generator_duration:45, generator_warmup:5},\
]}

data merge storage maps:active {targets:[{pos:"-399 1 -402"},{pos:"-398 1 -399"},{pos:"-398 1 -373"},{pos:"-397 1 -395"},{pos:"-397 1 -377"},{pos:"-397 1 -370"},{pos:"-396 3 -404"},{pos:"-396 4 -386"},{pos:"-396 8 -386"},{pos:"-396 8 -381"},{pos:"-395 0 -398"},{pos:"-395 8 -391"},{pos:"-394 1 -403"},{pos:"-394 1 -394"},{pos:"-394 1 -378"},{pos:"-394 1 -369"},{pos:"-394 4 -386"},{pos:"-394 8 -389"},{pos:"-394 8 -382"},{pos:"-393 0 -400"},{pos:"-393 0 -372"},{pos:"-393 8 -392"},{pos:"-393 8 -380"},{pos:"-393 9 -384"},{pos:"-392 0 -396"},{pos:"-392 0 -388"},{pos:"-392 0 -384"},{pos:"-392 0 -376"},{pos:"-392 1 -402"},{pos:"-392 1 -370"},{pos:"-392 5 -368"},{pos:"-392 9 -386"},{pos:"-391 3 -386"},{pos:"-390 0 -390"},{pos:"-390 0 -382"},{pos:"-389 0 -402"},{pos:"-389 0 -397"},{pos:"-389 0 -393"},{pos:"-389 0 -379"},{pos:"-389 0 -375"},{pos:"-389 0 -370"},{pos:"-389 3 -385"},{pos:"-389 5 -402"},{pos:"-389 5 -370"},{pos:"-389 8 -400"},{pos:"-389 8 -372"},{pos:"-387 4 -388"},{pos:"-386 0 -403"},{pos:"-386 0 -388"},{pos:"-386 0 -384"},{pos:"-386 4 -386"},{pos:"-386 5 -401"},{pos:"-386 5 -371"},{pos:"-385 0 -398"},{pos:"-385 0 -374"},{pos:"-385 1 -394"},{pos:"-385 1 -390"},{pos:"-385 1 -382"},{pos:"-385 1 -378"},{pos:"-384 -5 -386"},{pos:"-384 4 -387"},{pos:"-384 5 -404"},{pos:"-383 -4 -391"},{pos:"-383 -4 -381"},{pos:"-383 -2 -379"},{pos:"-383 0 -402"},{pos:"-383 0 -396"},{pos:"-383 0 -388"},{pos:"-383 0 -384"},{pos:"-383 0 -376"},{pos:"-383 0 -370"},{pos:"-383 1 -381"},{pos:"-383 2 -393"},{pos:"-383 5 -402"},{pos:"-383 5 -370"},{pos:"-381 -4 -386"},{pos:"-381 0 -390"},{pos:"-381 0 -382"},{pos:"-381 1 -394"},{pos:"-381 1 -392"},{pos:"-381 1 -378"},{pos:"-381 3 -386"},{pos:"-381 5 -401"},{pos:"-380 0 -397"},{pos:"-380 0 -375"},{pos:"-380 5 -399"},{pos:"-380 5 -373"},{pos:"-379 0 -402"},{pos:"-379 0 -392"},{pos:"-379 0 -380"},{pos:"-378 0 -388"},{pos:"-378 0 -384"},{pos:"-378 3 -394"},{pos:"-378 3 -378"},{pos:"-378 4 -386"},{pos:"-377 0 -401"},{pos:"-377 0 -371"},{pos:"-377 5 -401"},{pos:"-377 5 -371"},{pos:"-377 6 -388"},{pos:"-377 6 -384"},{pos:"-377 8 -398"},{pos:"-377 8 -374"},{pos:"-376 0 -399"},{pos:"-375 0 -391"},{pos:"-375 0 -381"},{pos:"-375 4 -386"},{pos:"-375 4 -383"},{pos:"-374 0 -396"},{pos:"-374 0 -376"},{pos:"-374 4 -389"},{pos:"-373 6 -393"},{pos:"-373 6 -386"},{pos:"-373 6 -379"},{pos:"-372 5 -396"},{pos:"-372 5 -376"},{pos:"-371 5 -370"},{pos:"-371 6 -392"},{pos:"-371 6 -386"},{pos:"-371 6 -380"},{pos:"-370 6 -389"},{pos:"-370 6 -383"}]}

data merge storage maps:active {crates:[{spawn_chance:1,pos:"-371 4 -371"},{spawn_chance:1,pos:"-371 4 -376"},{spawn_chance:1,pos:"-377 4 -373"},{spawn_chance:1,pos:"-391 4 -371"},{spawn_chance:1,pos:"-383 -1 -369"},{spawn_chance:1,pos:"-381 -1 -373"},{spawn_chance:1,pos:"-375 -1 -373"},{spawn_chance:1,pos:"-374 -1 -376"},{spawn_chance:2,pos:"-375 -1 -369"},{spawn_chance:2,pos:"-380 -1 -379"},{spawn_chance:2,pos:"-387 -1 -375"},{spawn_chance:2,pos:"-395 -1 -371"},{spawn_chance:2,pos:"-398 1 -377"},{spawn_chance:2,pos:"-396 1 -379"},{spawn_chance:2,pos:"-386 4 -370"},{spawn_chance:2,pos:"-382 -5 -382"},{spawn_chance:2,pos:"-386 -1 -380"},{spawn_chance:2,pos:"-391 -1 -383"},{spawn_chance:2,pos:"-390 -1 -378"},{spawn_chance:2,pos:"-379 -1 -384"},{spawn_chance:2,pos:"-374 -1 -382"},{spawn_chance:2,pos:"-376 -1 -378"},{spawn_chance:2,pos:"-370 5 -381"},{spawn_chance:2,pos:"-381 4 -371"},{spawn_chance:3,pos:"-394 7 -386"},{spawn_chance:3,pos:"-391 2 -386"},{spawn_chance:3,pos:"-396 3 -387"},{spawn_chance:3,pos:"-385 3 -387"},{spawn_chance:3,pos:"-381 2 -386"},{spawn_chance:3,pos:"-376 3 -386"},{spawn_chance:3,pos:"-371 5 -387"},{spawn_chance:3,pos:"-380 -5 -386"},{spawn_chance:2,pos:"-397 7 -383"},{spawn_chance:2,pos:"-371 5 -393"},{spawn_chance:2,pos:"-390 -1 -390"},{spawn_chance:2,pos:"-393 2 -391"},{spawn_chance:2,pos:"-398 1 -397"},{spawn_chance:2,pos:"-394 -1 -401"},{spawn_chance:2,pos:"-384 -5 -385"},{spawn_chance:2,pos:"-382 -5 -391"},{spawn_chance:1,pos:"-387 3 -385"},{spawn_chance:1,pos:"-394 7 -391"},{spawn_chance:1,pos:"-374 3 -387"},{spawn_chance:1,pos:"-371 5 -384"},{spawn_chance:1,pos:"-370 5 -390"},{spawn_chance:1,pos:"-395 3 -384"},{spawn_chance:1,pos:"-394 3 -389"},{spawn_chance:1,pos:"-386 -1 -388"},{spawn_chance:2,pos:"-384 -3 -393"},{spawn_chance:2,pos:"-393 0 -395"},{spawn_chance:2,pos:"-396 2 -404"},{spawn_chance:2,pos:"-388 -1 -392"},{spawn_chance:2,pos:"-379 -1 -391"},{spawn_chance:2,pos:"-376 -1 -393"},{spawn_chance:2,pos:"-370 4 -396"},{spawn_chance:2,pos:"-389 -1 -402"},{spawn_chance:1,pos:"-386 -1 -403"},{spawn_chance:1,pos:"-383 -1 -402"},{spawn_chance:1,pos:"-379 -1 -397"},{spawn_chance:1,pos:"-373 -1 -396"},{spawn_chance:1,pos:"-370 4 -398"},{spawn_chance:1,pos:"-391 4 -404"},{spawn_chance:1,pos:"-398 1 -402"},{spawn_chance:1,pos:"-389 -1 -397"}]}