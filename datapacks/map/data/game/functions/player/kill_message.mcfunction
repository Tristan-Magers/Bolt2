execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID -= @s ID

tag @a remove red_temp
tag @a[team=red] add red_temp

execute if score .mode .data = .6 .num as @s[team=red] run team join blue @a[tag=red_temp]

execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

team join red @a[tag=red_temp]
tag @a remove red_temp

execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID += @s ID