scoreboard players operation @e[type=magma_cube] ID -= @s ID
kill @e[type=magma_cube,scores={ID=0}]
scoreboard players operation @e[type=magma_cube] ID += @s ID

scoreboard players operation @e[type=magma_cube,limit=1,sort=nearest,tag=!old] ID = @s ID