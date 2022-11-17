scoreboard players operation @e[type=magma_cube] ID -= @s ID
execute if entity @e[type=magma_cube,scores={ID=0}] run tellraw @s [{"text":"[ Spawn Point Returned ]","color":"gray"},{"text":"","color":"dark_green"}]
execute if entity @e[type=magma_cube,scores={ID=0}] run give @s magma_cube_spawn_egg{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
kill @e[type=magma_cube,scores={ID=0}]
scoreboard players operation @e[type=magma_cube] ID += @s ID

scoreboard players operation @e[type=magma_cube,limit=1,sort=nearest,tag=!old] ID = @s ID