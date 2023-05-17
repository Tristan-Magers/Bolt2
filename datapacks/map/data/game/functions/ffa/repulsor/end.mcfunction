# say running end.mcfunction

#> FX
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 2

#> Kill display marker
execute as @e[tag=shieldDisplay] if score @p ID = @s ID run kill @s