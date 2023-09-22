tag @s add me

#
execute as @e[type=minecraft:area_effect_cloud] on origin run scoreboard players operation @e[tag=me] ID = @s ID

#
execute as @s[tag=!moved_up] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.4
execute as @s[tag=!moved_up] at @s run particle minecraft:sneeze ~ ~1 ~ 1 1 1 0.1 20 force
execute as @s[tag=!moved_up] at @s run tp @s ~ ~0.6 ~
tag @s add moved_up

#
tag @a remove poison_range

scoreboard players add @s t2 1

execute as @s[scores={t2=10}] at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2
execute as @s[scores={t2=10}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2

execute as @s[scores={t2=10}] at @s run scoreboard players set .success .calc 0
execute as @s[scores={t2=10}] at @s store success score .success .calc run fill ~-1 ~-0.9 ~-1 ~1 ~0.4 ~1 air replace gravel
execute as @s[scores={t2=10}] at @s if score .success .calc >= .1 .num run playsound minecraft:block.grass.break master @a
execute as @s[scores={t2=10..}] run scoreboard players set @s t2 0
data merge entity @s {RadiusPerTick:-0.01f,Duration:140}

tag @a[distance=..4] add poison_range
scoreboard players operation @a[distance=..4] KILL_ID = @s ID

#
tag @s remove me