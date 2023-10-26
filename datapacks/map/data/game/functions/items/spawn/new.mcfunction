execute at @s if block ~ -64 ~ redstone_block run tag @s add kill
execute as @s[type=slime] at @s if block ~ -64 ~ redstone_block run tellraw @p[scores={place_slime_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute as @s[type=slime] at @s if block ~ -64 ~ redstone_block run give @p[scores={place_slime_temp=1..}] panda_spawn_egg{CustomModelData:3,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1
execute as @s[type=magma_cube] at @s if block ~ -64 ~ redstone_block run tellraw @p[scores={place_magmac_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute as @s[type=magma_cube] at @s if block ~ -64 ~ redstone_block run give @p[scores={place_magmac_temp=1..}] panda_spawn_egg{CustomModelData:2,CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Spawn Point","italic":false,"color":"gray"}'},EntityTag:{id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0},HideFlags:48} 1

execute as @s at @s run function game:items/lower

execute as @s at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run kill @s
execute as @s at @s if block ~ ~ ~ minecraft:red_stained_glass_pane run kill @s

execute as @s at @s if block ~-1 ~0.5 ~ air unless block ~1 ~0.5 ~ air run tp @s ~.2 ~ ~ 0 0
execute as @s at @s if block ~1 ~0.5 ~ air unless block ~-1 ~0.5 ~ air run tp @s ~-.2 ~ ~ 0 0

execute as @s at @s if block ~ ~0.5 ~-1 air unless block ~ ~0.5 ~1 air run tp @s ~ ~ ~.2 0 0
execute as @s at @s if block ~ ~0.5 ~1 air unless block ~ ~0.5 ~-1 air run tp @s ~ ~ ~-.2 0 0

execute as @s[type=slime] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeSlime=1..},tag=slime_dif]
execute as @s[type=magma_cube] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeMagma=1..},tag=magma_dif]

#execute as @s at @s if block ^ ^1 ^-1 air if block ^1 ^1 ^-1 air if block ^-1 ^1 ^-1 air run tp @s ~ ~ ~ ~180 ~

#execute as @s at @s run function game:items/spawn/tracker_new