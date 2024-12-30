function game:items/target/spawn

fill ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 air replace minecraft:emerald_block
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

execute as @a[tag=id_share] at @s run title @s actionbar {"text":"BONUS BLOCK [+2]","color":"green"}
execute as @a[tag=id_share] at @s run scoreboard players set @s arrowReload 50
execute as @a[tag=id_share] at @s run scoreboard players add @s Scores 2
execute as @a[tag=id_share] at @s run scoreboard players add @s kill 1
execute as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=id_share] at @s run playsound minecraft:block.small_amethyst_bud.break master @a ~ ~ ~ 1 0.3
execute as @a[tag=id_share] at @s run playsound minecraft:block.small_amethyst_bud.break master @a ~ ~ ~ 1 1.2
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run title @s actionbar {"text":"SNIPER SHOT [+4]","color":"green"}
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run scoreboard players add @s Scores 2
execute if score @s distance matches 324..900 as @a[tag=id_share] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if score @s distance matches 900.. as @a[tag=id_share,tag=locked_50] at @s run function game:player/unlock/50
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run title @s actionbar {"text":"SUPER SNIPER SHOT [+8]","color":"green"}
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run scoreboard players add @s Scores 6
execute if score @s distance matches 900.. as @a[tag=id_share] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2