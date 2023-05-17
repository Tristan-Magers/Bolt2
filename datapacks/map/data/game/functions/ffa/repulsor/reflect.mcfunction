# say running reflect.mcfunction

#> Store owner ID
execute store result score .arrowUUID_0 .num run data get entity @s Owner[0]
execute store result score .arrowUUID_1 .num run data get entity @s Owner[1]
execute store result score .arrowUUID_2 .num run data get entity @s Owner[2]
execute store result score .arrowUUID_3 .num run data get entity @s Owner[3]

#> Get target
#! The commented line is used instead when testing so I can just do skeletons instead of needing another player
# execute as @e[tag=!shieldDeflector] run function game:ffa/repulsor/check_owner
execute as @a[tag=!shieldDeflector,gamemode=!spectator] run function game:ffa/repulsor/check_owner
# execute if entity @e[tag=shieldTarget] run say owner found!

#> FX
execute at @s unless entity @e[tag=shieldTarget] run particle minecraft:crit ~ ~ ~ 0 0 0 0.3 10 force @a
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 1
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1.5

#> Modify data or kill
execute unless entity @e[tag=shieldTarget] run kill @s
data merge entity @s {crit:1b,NoGravity:1b,leftOwner:1b}

data modify entity @s Owner set from entity @a[tag=shieldDeflector,limit=1] UUID
scoreboard players set @s deflectTimer 61

#> Change motion
execute store result score .arrowPosX_0 .num run data get entity @s Pos[0] 1000
execute store result score .arrowPosY_0 .num run data get entity @s Pos[1] 1000
execute store result score .arrowPosZ_0 .num run data get entity @s Pos[2] 1000

execute at @s facing entity @e[tag=shieldTarget,limit=1] eyes run tp @s ^ ^ ^1.5

execute store result score .arrowPosX_1 .num run data get entity @s Pos[0] 1000
execute store result score .arrowPosY_1 .num run data get entity @s Pos[1] 1000
execute store result score .arrowPosZ_1 .num run data get entity @s Pos[2] 1000

scoreboard players operation .arrowPosX_1 .num -= .arrowPosX_0 .num
scoreboard players operation .arrowPosY_1 .num -= .arrowPosY_0 .num
scoreboard players operation .arrowPosZ_1 .num -= .arrowPosZ_0 .num

execute store result entity @s Motion[0] double 0.001 run scoreboard players get .arrowPosX_1 .num
execute store result entity @s Motion[1] double 0.001 run scoreboard players get .arrowPosY_1 .num
execute store result entity @s Motion[2] double 0.001 run scoreboard players get .arrowPosZ_1 .num

#> Cleanup
tag @e remove shieldTarget

scoreboard players reset .arrowPosX_0 .num
scoreboard players reset .arrowPosY_0 .num
scoreboard players reset .arrowPosZ_0 .num
scoreboard players reset .arrowPosX_1 .num
scoreboard players reset .arrowPosY_1 .num
scoreboard players reset .arrowPosZ_1 .num