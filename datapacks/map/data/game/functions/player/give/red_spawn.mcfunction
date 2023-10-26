give @s panda_spawn_egg{CustomModelData:2,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1

scoreboard players remove @s drop_magma 1

execute as @s[scores={drop_magma=1..}] run function game:player/give/red_spawn