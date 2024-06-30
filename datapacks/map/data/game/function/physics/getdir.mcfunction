execute store result score @s DirX run data get entity @s Pos[0] -100
execute store result score @s DirY run data get entity @s Pos[1] -100
execute store result score @s DirZ run data get entity @s Pos[2] -100
tp @s ^ ^ ^1
execute store result score @s tDirX run data get entity @s Pos[0] -100
execute store result score @s tDirY run data get entity @s Pos[1] -100
execute store result score @s tDirZ run data get entity @s Pos[2] -100
tp @s ^ ^ ^-1
scoreboard players operation @s DirX -= @s tDirX
scoreboard players operation @s DirY -= @s tDirY
scoreboard players operation @s DirZ -= @s tDirZ

#particle minecraft:dripping_obsidian_tear ^ ^ ^1
#particle minecraft:dripping_obsidian_tear ^ ^ ^2
#particle minecraft:dripping_obsidian_tear ^ ^ ^3
#particle minecraft:dripping_obsidian_tear ^ ^ ^4
#particle minecraft:dripping_obsidian_tear ^ ^ ^5
#particle minecraft:dripping_obsidian_tear ^ ^ ^6