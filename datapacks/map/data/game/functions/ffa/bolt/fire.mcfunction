#> FX
effect clear @s[tag=!boltNoClear] glowing
stopsound @a master minecraft:block.portal.trigger
playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 .8
playsound minecraft:entity.firework_rocket.shoot master @s ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.shoot master @s ~ ~ ~ 1 1

#> Summon projectile
summon marker ~ ~ ~ {Tags:["bolt","boltSpawn"]}
scoreboard players operation @e[tag=boltSpawn] ID = @s ID
execute positioned ~ ~1.4 ~ rotated as @s run tp @e[tag=boltSpawn] ~ ~ ~ ~ ~
tag @e[tag=boltSpawn] remove boltSpawn