function game:id/spawn

give @s[tag=hasspawn,team=blue] panda_spawn_egg{CustomModelData:3,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
give @s[tag=hasspawn,team=red] panda_spawn_egg{CustomModelData:2,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
tellraw @s[tag=hasspawn] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]

kill @e[tag=spawn,tag=id_share]

tag @s remove hasspawn
tag @s remove spawn