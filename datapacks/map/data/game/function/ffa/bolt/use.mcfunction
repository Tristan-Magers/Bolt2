#> Set timer
scoreboard players set @s boltDelay 16
execute store success score .hasGlowing .num run effect give @s glowing 1 0 true
execute if score .hasGlowing .num matches 0 run tag @s add boltNoClear

#> FX
particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.125 5 force @a
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.5 2

#> Remove item

# FIX 1.20.6 mod break

#item modify entity @s weapon.mainhand game:ffa/reducestack