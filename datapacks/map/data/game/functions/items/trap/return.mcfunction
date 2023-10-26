function game:id/player

tag @s add kill
tellraw @p[tag=id_share] {"text":"Can't place there!","color":"dark_gray"}
give @p[tag=id_share] panda_spawn_egg{CustomModelData:0,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b},HideFlags:48} 1