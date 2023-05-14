#> Feather
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s unless score @s speedTimer matches 1.. run function game:ffa/feather/use
execute as @a[scores={speedTimer=1..}] run function game:ffa/feather/speed_tick
scoreboard players remove @a[scores={speedTimer=1..}] speedTimer 1

#> Repulsor
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:heart_of_the_sea"}}] at @s unless score @s deflectTimer matches 1.. run function game:ffa/repulsor/use
execute as @a[scores={deflectTimer=1..}] run function game:ffa/repulsor/tick
execute as @a[scores={deflectTimer=1}] run function game:ffa/repulsor/end
scoreboard players remove @a[scores={deflectTimer=1..}] deflectTimer 1
kill @e[type=arrow,scores={deflectTimer=1}]