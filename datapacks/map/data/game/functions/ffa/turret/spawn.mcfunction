#> ID + tags
scoreboard players operation @s ID = @a[tag=turretSpawn] ID
tag @a[tag=turretSpawn] add hasTurret
tag @s add turret
tag @a remove turretSpawn

#> Cooldown + NBT
data merge entity @s {NoAI:1b,Silent:1b}
scoreboard players set @s turretCooldown 30

#> Health setup
effect give @s minecraft:resistance infinite 5 true
# .num = health
scoreboard players set @s .num 2

#> Down
function game:items/lower
tp @s ~ ~-1 ~

#> Punch detection
summon interaction ~ ~1 ~ {Tags:["turretPunch"]}

#> FX
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt master @a
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0 40 force @a