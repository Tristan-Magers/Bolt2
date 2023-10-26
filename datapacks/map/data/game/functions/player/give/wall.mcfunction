give @s panda_spawn_egg{CustomModelData:1,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:silverfish",Silent:1b,NoAI:1},HideFlags:48} 1

scoreboard players remove @s drop_silver 1

execute as @s[scores={drop_silver=1..}] run function game:player/give/wall