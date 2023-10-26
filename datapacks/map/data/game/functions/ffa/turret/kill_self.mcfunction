#> Kill interaction
execute positioned ~ ~0.8 ~ run kill @e[tag=turretPunch,limit=1,sort=nearest]

#> Remove target
scoreboard players operation @e[tag=targeted] ID.target -= @s ID
tag @e[tag=targeted,scores={ID.target=0}] remove targeted
scoreboard players reset @e[scores={ID.target=0}] ID.target
scoreboard players operation @e[tag=targeted] ID.target += @s ID

#> Remove owner
function game:id/player
tag @a[tag=hasTurret,tag=id_share] remove hasTurret

#> FX
data merge entity @s {Glowing:1b}
playsound minecraft:entity.wither.ambient master @a ~ ~1 ~ 1.5 2
playsound minecraft:block.beacon.deactivate master @a ~1 ~ ~ 1.5 1.4
playsound minecraft:block.anvil.place master @a ~ ~1 ~ 1.5 0.65
particle poof ~ ~1 ~ 0.2 0.1 0.2 0.05 10 force @a
particle smoke ~ ~1 ~ 0.2 0.1 0.2 0.05 30 force @a
particle minecraft:campfire_cosy_smoke ~ ~1.2 ~ 0.2 0.1 0.2 0.001 5 force @a

#> Thy end is now
kill @s