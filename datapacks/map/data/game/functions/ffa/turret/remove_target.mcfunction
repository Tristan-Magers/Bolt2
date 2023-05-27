#> Scoreboard
scoreboard players set @s turretCooldown 30
scoreboard players set @s turretTimer 0

#> Remove target
scoreboard players operation @e[tag=targeted] ID.target -= @s ID
tag @e[scores={ID.target=0}] remove targeted

#> FX
playsound minecraft:item.shield.break master @a ~ ~1 ~ 1 0.8
playsound minecraft:block.conduit.deactivate master @s ~ ~1 ~ 0.7 2
playsound minecraft:entity.wither.ambient master @s ~ ~1 ~ 0.7 2
particle item iron_block ~ ~1 ~ 0.2 0.2 0.2 0.2 30 force @a