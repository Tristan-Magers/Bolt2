give @s panda_spawn_egg{CustomModelData:0,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},HideFlags:48} 1

scoreboard players remove @s drop_creeper 1

execute as @s[scores={drop_creeper=1..}] run function game:player/give/trap