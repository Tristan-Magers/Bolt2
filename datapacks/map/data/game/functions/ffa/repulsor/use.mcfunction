# say running use.mcfunction

#> Set timer
scoreboard players set @s deflectTimer 51

#> Particle display setup
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["shieldID","shieldDisplay"],Invisible:1b,Rotation:[0f,-90f]}
scoreboard players operation @e[tag=shieldID] ID = @s ID
scoreboard players set @e[tag=shieldID] deflectTimer 13
tag @e[tag=shieldID] remove shieldID

#> FX
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1.5
particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.2 5 normal @a

#> Remove item
#item modify entity @s weapon.mainhand game:ffa/reducestack