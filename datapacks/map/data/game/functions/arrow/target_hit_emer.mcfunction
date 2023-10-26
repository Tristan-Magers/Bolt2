function game:items/target/spawn

fill ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 air replace minecraft:emerald_block
particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force

function game:id/player

execute as @a[tag=id_share] at @s run title @s actionbar {"text":"BONUS BLOCK [+2]","color":"green"}
execute as @a[tag=id_share] at @s run scoreboard players set @s arrowReload 50
execute as @a[tag=id_share] at @s run scoreboard players add @s Scores 2
execute as @a[tag=id_share] at @s run scoreboard players add @s kill 1
execute as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=id_share] at @s run playsound minecraft:block.small_amethyst_bud.break master @a ~ ~ ~ 1 0.3
execute as @a[tag=id_share] at @s run playsound minecraft:block.small_amethyst_bud.break master @a ~ ~ ~ 1 1.2
execute as @a[tag=id_share,distance=18..30] at @s run title @s actionbar {"text":"SNIPER SHOT [+4]","color":"green"}
execute as @a[tag=id_share,distance=18..30] at @s run scoreboard players add @s Scores 2
execute as @a[tag=id_share,distance=18..30] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @a[tag=id_share,distance=30..] at @s run title @s actionbar {"text":"SUPER SNIPER SHOT [+8]","color":"green"}
execute as @a[tag=id_share,distance=30..] at @s run scoreboard players add @s Scores 6
execute as @a[tag=id_share,distance=30..] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2