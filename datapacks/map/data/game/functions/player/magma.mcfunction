function game:id/dynamic {"selector":"@e[type=magma_cube]"}
execute if entity @e[type=magma_cube,tag=id_share] run tellraw @s [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]
execute if entity @e[type=magma_cube,tag=id_share] run give @s panda_spawn_egg{CustomModelData:2,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
kill @e[type=magma_cube,tag=id_share]

scoreboard players operation @e[type=magma_cube,limit=1,sort=nearest,tag=!old] ID = @s ID