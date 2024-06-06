#> Set speed 
scoreboard players set @s speedTimer 60

#> Apply effects
effect give @s speed 1 5 true
effect give @s slow_falling 3

#> FX
particle minecraft:cloud ~ ~1 ~ 0.2 0.4 0.2 0.1 10 force @a
execute rotated ~ 0 positioned ~ ~1 ~ run particle minecraft:campfire_cosy_smoke ^ ^ ^-0.2 0.2 0.4 0.2 0 7 force @a
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1 1
playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 0.6 1.7
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 0.7
playsound minecraft:item.trident.throw master @a ~ ~ ~ 0.8 0.8

#> Remove item

# FIX 1.20.6 break

#item modify entity @s weapon.mainhand game:ffa/reducestack