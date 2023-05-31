#> FX
scoreboard players set @s turretTimer 50
execute positioned ~ ~1.8 ~ facing entity @e[tag=currentTarget,limit=1] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle
execute at @e[tag=currentTarget] run particle explosion ~ ~1.8 ~ 0 0 0 1 1 force @a
execute at @e[tag=currentTarget] run particle flash ~ ~1.8 ~ 0 0 0 1 3 force @a
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1.3
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 0.7

#> Kill
execute at @a[tag=hasTurret] if score @p ID = @s ID run tag @p add executioner
damage @e[tag=currentTarget,limit=1] 982 minecraft:arrow by @a[tag=executioner,limit=1]
tag @e[tag=currentTarget,limit=1] add turretDead

#> Cleanup
function game:ffa/turret/remove_target