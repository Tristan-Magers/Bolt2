execute at @s if block ~ -64 ~ redstone_block run tag @s add stuck

execute as @s[type=slime,tag=!kill] at @s run playsound minecraft:entity.magma_cube.squish master @a[team=blue] ~ ~ ~ 0.7 1.2
execute as @s[type=magma_cube,tag=!kill] at @s run playsound minecraft:entity.magma_cube.squish master @a[team=red] ~ ~ ~ 0.7 1.2

execute as @s at @s run function game:items/lower

execute as @s at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run kill @s
execute as @s at @s if block ~ ~ ~ minecraft:red_stained_glass_pane run kill @s

execute as @s at @s if block ~ ~0.51 ~ air if block ~-1 ~0.5 ~ air unless block ~1 ~0.5 ~ air run tp @s ~.2 ~ ~ 0 0
execute as @s at @s if block ~ ~0.51 ~ air if block ~1 ~0.5 ~ air unless block ~-1 ~0.5 ~ air run tp @s ~-.2 ~ ~ 0 0

execute as @s at @s if block ~ ~0.51 ~ air if block ~ ~0.5 ~-1 air unless block ~ ~0.5 ~1 air run tp @s ~ ~ ~.2 0 0
execute as @s at @s if block ~ ~0.51 ~ air if block ~ ~0.5 ~1 air unless block ~ ~0.5 ~-1 air run tp @s ~ ~ ~-.2 0 0

execute as @s at @s if block ~ ~-0.1 ~ #minecraft:fences if block ~ ~0.5 ~ air run tp @s ~ ~0.5 ~ 0 0
execute as @s at @s if block ~ ~-0.1 ~ #minecraft:walls if block ~ ~0.5 ~ air run tp @s ~ ~0.5 ~ 0 0

execute as @s[type=slime] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeSlime=1..},tag=slime_dif]
execute as @s[type=magma_cube] at @s run tp @s ~ ~ ~ facing entity @p[scores={placeMagma=1..},tag=magma_dif]

tag @s remove in

execute at @s[tag=!stuck] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~0.29 ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~0.29 ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~-0.79 ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~0.29 ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~-0.79 ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~0.29 ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~-0.79 ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~-0.79 ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~ ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~0.29 ~ ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~ ~0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~-0.29 ~ ~-0.29 run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~ ~ ~ unless block ~ ~ ~ #minecraft:fences run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~ ~0.29 ~ unless block ~ ~ ~ #minecraft:fences run function game:physics/inblock
execute at @s[tag=in] at @s positioned ~ ~0.8 ~ positioned ~ ~-0.79 ~ unless block ~ ~ ~ #minecraft:fences run function game:physics/inblock

tag @s[tag=!in] add stuck

execute as @s[type=slime,tag=!stuck] at @s run tag @p[scores={place_slime_temp=1..}] remove used_spawn
execute as @s[type=slime,tag=stuck] at @s run tag @p[scores={place_slime_temp=1..}] add used_spawn
execute as @s[type=slime,tag=stuck] at @s run tellraw @p[scores={place_slime_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute as @s[type=slime,tag=stuck] at @s run give @p[scores={place_slime_temp=1..}] panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 1
execute as @s[type=magma_cube,tag=!stuck] at @s run tag @p[scores={place_magmac_temp=1..}] remove used_spawn 
execute as @s[type=magma_cube,tag=stuck] at @s run tag @p[scores={place_magmac_temp=1..}] add used_spawn 
execute as @s[type=magma_cube,tag=stuck] at @s run tellraw @p[scores={place_magmac_temp=1..}] {"text":"Can't place there!","color":"dark_gray"}
execute as @s[type=magma_cube,tag=stuck] at @s run give @p[scores={place_magmac_temp=1..}] panda_spawn_egg[custom_model_data=2,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:magma_cube",PersistenceRequired:1b,Silent:1b,Size:0}] 1

tag @s[tag=stuck] add kill

#execute as @s at @s if block ^ ^1 ^-1 air if block ^1 ^1 ^-1 air if block ^-1 ^1 ^-1 air run tp @s ~ ~ ~ ~180 ~

#execute as @s at @s run function game:items/spawn/tracker_new