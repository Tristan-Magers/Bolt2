function game:items/target/spawn

fill ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 air replace minecraft:target
particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force

#
execute store result score @s x_t run data get entity @s Pos[0] 1
execute store result score @s y_t run data get entity @s Pos[1] 1
execute store result score @s z_t run data get entity @s Pos[2] 1

scoreboard players operation @s x_t -= @s x
scoreboard players operation @s y_t -= @s y
scoreboard players operation @s z_t -= @s z

scoreboard players operation @s x_t *= @s x_t
scoreboard players operation @s y_t *= @s y_t
scoreboard players operation @s z_t *= @s z_t

scoreboard players operation @s distance = @s x_t
scoreboard players operation @s distance += @s y_t
scoreboard players operation @s distance += @s z_t

#
function game:id/player

execute as @a[tag=id_share] at @s run title @s actionbar {"text":"BLOCK HIT [+1]","color":"gray"}
execute as @a[tag=id_share] at @s run scoreboard players set @s arrowReload 50
execute as @a[tag=id_share] at @s run scoreboard players add @s Scores 1
execute as @a[tag=id_share] at @s run scoreboard players add @s kill 1
execute as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=id_share] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0.5
execute as @a[tag=id_share] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1.2
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run title @s actionbar {"text":"SNIPER SHOT [+2]","color":"gold"}
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run scoreboard players add @s Scores 1
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run title @s actionbar {"text":"SUPER SNIPER SHOT [+4]","color":"gold"}
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run scoreboard players add @s Scores 3
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2