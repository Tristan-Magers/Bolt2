give @s panda_spawn_egg{CustomModelData:3,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1

scoreboard players remove @s drop_slime 1

execute as @s[scores={drop_slime=1..}] run function game:player/give/blue_spawn