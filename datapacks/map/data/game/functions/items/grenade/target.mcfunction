execute as @s at @s positioned ~ ~0.6 ~ run execute store result score @s t4 run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace target
execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @s t5 += @s t4
execute as @s at @s positioned ~ ~0.6 ~ run execute store result score @s t4 run fill ~-2 ~-2 ~-5 ~2 ~2 ~5 air replace target
execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @s t5 += @s t4
execute as @s at @s positioned ~ ~0.6 ~ run execute store result score @s t4 run fill ~-2 ~-5 ~-2 ~2 ~5 ~2 air replace target
execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @s t5 += @s t4
execute as @s at @s positioned ~ ~0.6 ~ run execute store result score @s t4 run fill ~-5 ~-2 ~-2 ~5 ~2 ~2 air replace target
execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @s t5 += @s t4

execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @a[scores={ID=0}] kill += @s t5
execute as @s at @s positioned ~ ~0.6 ~ run scoreboard players operation @a[scores={ID=0}] Scores += @s t5

execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=1..}] run function game:items/target/spawn
execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=2..}] run function game:items/target/spawn
execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=3..}] run function game:items/target/spawn
execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=4..}] run function game:items/target/spawn
execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=5..}] run function game:items/target/spawn
execute as @s at @s positioned ~ ~0.6 ~ run execute as @s[scores={t5=6..}] run function game:items/target/spawn

execute as @s[scores={t5=1..}] as @a[scores={ID=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.8
execute as @s[scores={t5=1..}] as @a[scores={ID=0}] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0.5
execute as @s[scores={t5=1..}] as @a[scores={ID=0}] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1.2
