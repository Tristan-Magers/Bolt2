function game:id/dynamic {"selector":"@e[type=slime]"}
execute if entity @e[type=slime,tag=id_share] run tellraw @s [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]
execute if entity @e[type=slime,tag=id_share] run give @s panda_spawn_egg{CustomModelData:3,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
kill @e[type=slime,tag=id_share]

scoreboard players operation @e[type=slime,limit=1,sort=nearest,tag=!old] ID = @s ID