say running reflect.mcfunction

#> FX
execute unless entity @e[tag=shieldTarget] run particle minecraft:crit ~ ~ ~ 0 0 0 0.3 5 force @a
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 1
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1.5

#> Store owner ID
execute store result score .arrowUUID_0 .num run data get entity @s Owner[0]
execute store result score .arrowUUID_1 .num run data get entity @s Owner[1]
execute store result score .arrowUUID_2 .num run data get entity @s Owner[2]
execute store result score .arrowUUID_3 .num run data get entity @s Owner[3]

#> Get target
execute as @a[tag=!shieldDeflector,gamemode=!spectator] unless score .shieldDeflectorUUID_0 .num matches 0 run function game:ffa/repulsor/check_owner

#> Modify data or kill
execute unless entity @e[tag=shieldTarget] run kill @s
data merge entity @s {crit:1b,NoGravity:1b}

data modify entity @s Owner set from entity @a[tag=shieldDeflector,limit=1] UUID
scoreboard players set @s deflectTimer 61

#> Change motion
data merge entity @s {Motion:[1.0,0.0,0.0]}
execute at @s facing entity @e[tag=shieldTarget] eyes run tp @s ~ ~ ~ ~ ~

#> Cleanup
# tag @e remove shieldTarget
tag @a remove shieldDeflector