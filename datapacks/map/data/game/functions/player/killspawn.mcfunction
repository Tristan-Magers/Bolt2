scoreboard players operation @e[tag=spawn] ID -= @s ID

give @s[tag=hasspawn,team=blue] slime_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
give @s[tag=hasspawn,team=red] magma_cube_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
tellraw @s[tag=hasspawn] [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]

kill @e[tag=spawn,scores={ID=0}]

tag @s remove hasspawn
tag @s remove spawn

scoreboard players operation @e[tag=spawn] ID += @s ID