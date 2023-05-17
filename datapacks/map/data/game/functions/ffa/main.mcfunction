#> Feather
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s unless score @s speedTimer matches 1.. run function game:ffa/feather/use
execute as @a[scores={speedTimer=1..}] run function game:ffa/feather/speed_tick
scoreboard players remove @a[scores={speedTimer=1..}] speedTimer 1

#> Repulsor
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:heart_of_the_sea"}}] at @s unless score @s deflectTimer matches 1.. run function game:ffa/repulsor/use
execute as @a[scores={deflectTimer=1..}] at @s run function game:ffa/repulsor/tick
execute as @a[scores={deflectTimer=1}] at @s run function game:ffa/repulsor/end
scoreboard players remove @e[scores={deflectTimer=1..}] deflectTimer 1
kill @e[type=arrow,scores={deflectTimer=1}]

#> Bolt
scoreboard players remove @a[scores={boltDelay=1..}] boltDelay 1
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond"}}] at @s unless score @s boltDelay matches 1.. run function game:ffa/bolt/use
execute as @a[scores={boltDelay=1}] at @s run function game:ffa/bolt/fire
kill @e[tag=bolt,scores={boltDelay=100}]
scoreboard players add @e[tag=bolt] boltDelay 1
execute as @e[tag=bolt] at @s run function game:ffa/bolt/tick
scoreboard players reset .boltTick .num

#> Delta
#! Currently commented out because delta api isn't added right now, will finish once it is (or you can do it yourself); ideally should launch players like 3 blocks away 
# scoreboard players set $strength delta.api.launch 1000
# execute as @a[tag=shieldDelta] at @s facing entity @a[tag=shieldDeflector,limit=1] feet run execute rotated ~-180 ~ run function delta:api/launch_looking 
# tag @a remove shieldDeflector
# tag @a remove shieldDelta