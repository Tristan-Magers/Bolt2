# say running remove_target.mcfunction ...

#> Scoreboard
scoreboard players set @s turretCooldown 30
scoreboard players set @s turretTimer 0

#> Remove target
scoreboard players operation @e[tag=targeted] ID.target -= @s ID
tag @e[scores={ID.target=0}] remove targeted
tag @s remove hasTarget
scoreboard players operation @e[tag=targeted] ID.target += @s ID

#> FX
playsound minecraft:item.shield.break master @a[distance=..25] ~ ~1 ~ 0.8 0.8 0.4
playsound minecraft:block.conduit.deactivate master @a[distance=..25] ~ ~1 ~ 0.7 2 0.35
playsound minecraft:item.shield.break master @a[distance=..25] ~ ~1 ~ 0.8 0.8 0.4
playsound minecraft:block.conduit.deactivate master @a[distance=..25] ~ ~1 ~ 0.7 2 0.35
# playsound minecraft:entity.wither.ambient master @a[distance=..24] ~ ~1 ~ 0.7 2 0.35
particle item iron_block ~ ~1 ~ 0.2 0.2 0.2 0.2 30 force @a