# say running remove_target.mcfunction ...

#> Scoreboard
scoreboard players set @s turretCooldown 30
scoreboard players set @s[nbt={HurtTime:9s}] turretCooldown 40
scoreboard players set @s turretTimer 0

#> Remove target
scoreboard players operation @e ID.turret -= @s ID.target
#tag @e[scores={ID.turret=0}] remove targeted
tag @e[scores={ID.turret=0}] remove currentTarget
scoreboard players operation @e ID.turret += @s ID.target

tag @s remove hasTarget

#> FX
execute unless entity @s[tag=laser] run playsound minecraft:item.shield.break master @a[distance=..25] ~ ~1 ~ 0.8 0.8 0.4
playsound minecraft:block.conduit.deactivate master @a[distance=..25] ~ ~1 ~ 0.7 2 0.35
execute unless entity @s[tag=laser] run particle item{item:"iron_block"} ~ ~1 ~ 0.2 0.2 0.2 0.2 30 force @a

tag @s remove laser