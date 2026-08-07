stopsound @a

# progress timer if the chunk is loaded..... which is run BEFORE THE PLAYERS ARE TELEPORTED.
execute if score .70 .num > .load .data if score .22 .num < .load .data as @a at @s if loaded ~ ~ ~ run scoreboard players set .load .data 22

kill @e[tag=head]
kill @e[tag=cutscene]

gamemode adventure @a

execute store result storage macro mapID int 1 run scoreboard players get .map .data
function game:map/map_from_id with storage macro
# REWORK
execute unless data storage maps:active origin run data modify storage maps:active origin set value "0 0 0"
function game:map/summon_origin_entity with storage maps:active

execute store result score .blue_spawn_box macro_counter run data get storage maps:active spawn.blueSpawnBoundingBox
execute store result score .red_spawn_box macro_counter run data get storage maps:active spawn.redSpawnBoundingBox
execute store result score .map_setting invul run data get storage maps:active spawn.ctfInvulnTime
execute if score .mode .data matches 6 store result score .map_setting invul run data get storage maps:active spawn.infectionInvulnTime


# REWORK this no longer loads the map fast enough
function game:map/load_box with storage maps:active settings
#execute if score .map .data = .1 .num run tp @a[tag=!loading] -54.5 -57.00 8.5 0 0
#execute if score .map .data = .2 .num run tp @a[tag=!loading] -151.5 -59.00 -122.5
#execute if score .map .data = .3 .num run tp @a[tag=!loading] -146.5 -1.00 389.5 0 0
#execute if score .map .data = .4 .num run tp @a[tag=!loading] -287.5 -59.00 28.5 0 0
#execute if score .map .data = .5 .num run tp @a[tag=!loading] -316.5 -59.00 -69.5 0 0
#execute if score .map .data = .6 .num run tp @a[tag=!loading] -392.5 -59.00 16.5 0 0
#execute if score .map .data = .7 .num run tp @a[tag=!loading] -392.5 -59.00 16.5 0 0
#execute if score .map .data = .10 .num run tp @a[tag=!loading] -220.5 -50.00 -431.5 0 0
#execute if score .map .data = .12 .num run tp @a[tag=!loading] -18.5 -53.00 -299.50 0 0
#execute if score .map .data = .13 .num run tp @a[tag=!loading] -39.5 -37.00 210.5 0 0
#execute if score .map .data = .14 .num run tp @a[tag=!loading] -551.5 -20.00 -291.5 0 0
#execute if score .map .data = .15 .num run tp @a[tag=!loading] -453.5 -39.00 174.5 0 0

effect give @a[tag=!loading] minecraft:invisibility 4 10 true
effect give @a[tag=!loading] minecraft:weakness 4 10 true
effect give @a[tag=!loading] minecraft:slowness 4 10 true

clear @a[tag=!loading]

execute as @a[tag=loading] at @s run tp @s @s

scoreboard players remove .load .data 1

execute if score .0 .num < .load .data run tag @a add loading

execute if score .0 .num = .load .data run function game:start
execute if score .0 .num = .load .data run tag @a remove loading

scoreboard players add .load_time .data 1

execute if score .load_time .data matches 20.. run title @a times 0 20 10
#execute if score .load_time .data matches 20.. run title @a title {"translate":"\u0001","font":"title"}
