function game:items/target/spawn

fill ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 air replace minecraft:target
particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force

function game:id/player

execute as @a[tag=id_share] at @s run title @s actionbar {"text":"BLOCK HIT [+1]","color":"gray"}
execute as @a[tag=id_share] at @s run scoreboard players set @s arrowReload 50
execute as @a[tag=id_share] at @s run scoreboard players add @s Scores 1
execute as @a[tag=id_share] at @s run scoreboard players add @s kill 1
execute as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=id_share] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0.5
execute as @a[tag=id_share] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1.2
execute as @a[tag=id_share,distance=18..30] at @s run title @s actionbar {"text":"SNIPER SHOT [+2]","color":"gold"}
execute as @a[tag=id_share,distance=18..30] at @s run scoreboard players add @s Scores 1
execute as @a[tag=id_share,distance=18..30] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[tag=id_share,distance=30..] at @s run title @s actionbar {"text":"SUPER SNIPER SHOT [+4]","color":"gold"}
execute as @a[tag=id_share,distance=30..] at @s run scoreboard players add @s Scores 3
execute as @a[tag=id_share,distance=30..] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2