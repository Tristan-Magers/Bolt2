give @s panda_spawn_egg{CustomModelData:4,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Turret","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f},HideFlags:48} 1

scoreboard players remove @s drop_turret 1

execute as @s[scores={drop_turret=1..}] run function game:player/give/turret