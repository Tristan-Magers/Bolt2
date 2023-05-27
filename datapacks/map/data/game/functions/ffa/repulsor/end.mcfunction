# say running end.mcfunction

#> FX
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 2
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.75 0.5 0 10 force @a

#> Kill display marker
execute as @e[tag=shieldDisplay] if score @p ID = @s ID run kill @s