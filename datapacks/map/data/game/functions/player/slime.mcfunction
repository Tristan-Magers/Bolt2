scoreboard players operation @e[type=slime] ID -= @s ID
kill @e[type=slime,scores={ID=0}]
scoreboard players operation @e[type=slime] ID += @s ID

scoreboard players operation @e[type=slime,limit=1,sort=nearest,tag=!old] ID = @s ID