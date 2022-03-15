effect give @s minecraft:night_vision 999999 10 true
effect give @s minecraft:weakness 999999 10 true
effect give @s minecraft:saturation 999999 10 true

scoreboard players add @s ID 0

execute if entity @s[scores={ID=0}] run scoreboard players add .new ID 1
execute if entity @s[scores={ID=0}] run scoreboard players operation @p[scores={ID=0}] ID = .new ID

execute as @s store result score @s arrowCount run clear @s arrow 0
scoreboard players add @s[scores={arrowCount=..2}] arrowReload 1
scoreboard players set @s[scores={arrowCount=3..}] arrowReload 0

clear @s[scores={arrowReload=40..}] arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=0}] hotbar.8 with minecraft:arrow
item replace entity @s[scores={arrowReload=40..,arrowCount=1}] hotbar.8 with minecraft:arrow 2
item replace entity @s[scores={arrowReload=40..,arrowCount=2}] hotbar.8 with minecraft:arrow 3
scoreboard players set @s[scores={arrowReload=40..}] arrowReload 0

effect give @s[scores={health=1..19}] minecraft:instant_health 1 10 true

scoreboard players add @s invul 0
scoreboard players remove @s[scores={invul=1..}] invul 1

item replace entity @s[scores={invul=2..},nbt=!{Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] armor.head with minecraft:chainmail_helmet
item replace entity @s[scores={invul=1}] armor.head with minecraft:air

effect give @s[scores={deaths=1..}] minecraft:wither 1 1
scoreboard players set @s[scores={deaths=1..}] respawn 70
execute if score .teamdif .data >= .1 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 110
execute if score .teamdif .data >= .2 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 150
execute if score .teamdif .data >= .3 .num run scoreboard players set @s[scores={deaths=1..},team=red] respawn 190
execute if score .teamdif .data <= .n1 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 110
execute if score .teamdif .data <= .n2 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 150
execute if score .teamdif .data <= .n3 .num run scoreboard players set @s[scores={deaths=1..},team=blue] respawn 190
scoreboard players set @s deaths 0

execute as @s[scores={respawn=1..}] at @s run function game:player/ded
scoreboard players add @s respawn 0

execute as @s[scores={kill=1..}] at @s run function game:player/kill

execute as @s at @s run function game:player/spawncheck

execute as @s[scores={placeSlime=1..}] at @s positioned ^ ^ ^1.6 run function game:player/slime
execute as @s[scores={placeMagma=1..}] at @s positioned ^ ^ ^1.6 run function game:player/magma
execute as @s[scores={placeCreeper=1..}] at @s positioned ^ ^ ^1.6 run function game:player/creeper

scoreboard players set @s placeSlime 0
scoreboard players set @s placeMagma 0
scoreboard players set @s placeCreeper 0

#holding flag
scoreboard players add @s[tag=hasflag] flagtime 1
effect give @s[tag=hasflag,scores={flagtime=1}] glowing 1 1 true
title @s[tag=hasflag,scores={flagtime=1}] actionbar {"text":"! ! ! GLOWING ! ! !","color":"gold"}
title @s[tag=hasflag,scores={flagtime=20}] actionbar {"text":"","color":"gold"}
execute as @s[tag=hasflag,scores={flagtime=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.4 1.2
scoreboard players set @s[tag=hasflag,scores={flagtime=50..}] flagtime 0
scoreboard players set @s[tag=!hasflag] flagtime 0

#ladders
execute as @s at @s if block ~ ~0.24 ~ minecraft:ladder run effect give @s minecraft:levitation 1 8 true
execute as @s at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect clear @s minecraft:levitation
execute as @s at @s if block ~ ~0.24 ~ minecraft:ladder if block ~ ~0.7 ~ minecraft:air run effect give @s minecraft:levitation 1 1 true
execute as @s at @s unless block ~ ~0.24 ~ minecraft:ladder run effect clear @s minecraft:levitation

#remove blind
scoreboard players remove @s[scores={removeBlind=0..}] removeBlind 1
effect clear @s[scores={removeBlind=0}] minecraft:blindness