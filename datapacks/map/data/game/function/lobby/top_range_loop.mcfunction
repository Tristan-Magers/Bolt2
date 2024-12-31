execute as @a[x=256,y=-42,z=-263,distance=..2,gamemode=adventure] at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run effect give @s minecraft:blindness 1 1 true
execute as @a[x=256,y=-42,z=-263,distance=..2,gamemode=adventure] at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run tag @s add door_sound
execute as @a[x=256,y=-42,z=-263,distance=..2,gamemode=adventure] at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run tp @s 254.41 -50.00 -263.02 90 0

execute as @a[x=242.5,y=-46.5,z=-268,dz=1,dy=3,dx=13] run effect give @s minecraft:blindness 1 1 true
execute as @a[x=242.5,y=-46.5,z=-268,dz=1,dy=3,dx=13] run tag @s add door_sound2
execute as @a[x=242.5,y=-46.5,z=-268,dz=1,dy=3,dx=13] run tp @s 250.5 -42.00 -263.5 180 0

execute as @a[tag=door_sound2] at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 0.8
execute as @a[tag=door_sound] at @s run playsound minecraft:block.iron_door.open master @s
tag @a remove door_sound
tag @a remove door_sound2