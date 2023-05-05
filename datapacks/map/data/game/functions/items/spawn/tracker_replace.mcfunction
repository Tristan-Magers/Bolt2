tag @s add kill
tag @s add killed

summon slime ~ ~ ~ {NoAI:0,PersistenceRequired:1b,Silent:1b,Size:0}

tp @e[type=slime,tag=!old,sort=nearest,limit=1] @s

scoreboard players operation @e[type=slime,tag=!old,sort=nearest,limit=1] ID = @s ID

effect give @e[type=slime,tag=!old,sort=nearest,limit=1] resistance 1 10 true

tag @e[type=slime,tag=!old,sort=nearest,limit=1] add old