#> Kill interaction
execute positioned ~ ~0.8 ~ run kill @e[tag=turretPunch,limit=1,sort=nearest]
execute positioned ~ ~-1 ~ run kill @e[tag=turret_stand,limit=1,sort=nearest]
execute positioned ~ ~0 ~ run kill @e[tag=turret_head,limit=1,sort=nearest]

#> Remove target
scoreboard players operation @e ID.turret -= @s ID.target
#tag @e[scores={ID.turret=0}] remove targeted
tag @e[scores={ID.turret=0}] remove currentTarget
scoreboard players operation @e ID.turret += @s ID.target

#> Remove owner
function game:id/player
tag @a[tag=hasTurret,tag=id_share] remove hasTurret

#> FX
#data merge entity @s {Glowing:1b}
playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 0
playsound minecraft:block.beacon.deactivate master @a ~1 ~ ~ 1.5 1.4
playsound minecraft:block.anvil.place master @a ~ ~1 ~ 0.5 0.65
particle poof ~ ~1 ~ 0.2 0.1 0.2 0.05 10 force @a
particle smoke ~ ~1 ~ 0.2 0.1 0.2 0.05 30 force @a
particle minecraft:campfire_cosy_smoke ~ ~1.2 ~ 0.2 0.1 0.2 0.001 5 force @a
particle minecraft:flash ~ ~1.2 ~ 0 0 0 0.001 0 force @a

#> Thy end is now
kill @s