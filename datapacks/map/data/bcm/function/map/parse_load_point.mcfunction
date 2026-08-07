$execute positioned $(load_point) run function bcm:util/tp_here
execute store result storage maps:active settings.mapSize.x1 int 1 store result score .x1 .calc run data get entity @s Pos[0]
execute store result storage maps:active settings.mapSize.y1 int 1 store result score .y1 .calc run data get entity @s Pos[1]
execute store result storage maps:active settings.mapSize.z1 int 1 store result score .z1 .calc run data get entity @s Pos[2]
kill @s