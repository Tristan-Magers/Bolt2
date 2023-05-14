say running tick.mcfunction

#> Reflect
tag @s add shieldDeflector
execute positioned ~ ~1 ~ as @e[tag=arrow,distance=..3.5] run function game:ffa/repulsor/reflect

#> FX
tellraw @a [{"text":"Shield display step: "},{"score":{"objective":"deflectTimer","name":"@e[tag=shieldDisplay,limit=1]"}}]

execute as @e[tag=shieldDisplay] if score @p ID = @s ID run tag @s add shieldTick
execute at @s positioned ~ ~2 ~ run tp @e[tag=shieldTick] ~ ~ ~ 
execute as @e[tag=shieldTick] run function game:ffa/repulsor/display
scoreboard players reset .rotateStep .num

tag @e[tag=shieldTick,tag=!shieldUp,scores={deflectTimer=0}] add shieldUp
tag @e[tag=shieldTick,tag=shieldUp,scores={deflectTimer=0}] remove shieldUp
scoreboard players remove @e[tag=shieldTick,scores={deflectTimer=1..}] deflectTimer 1
scoreboard players set @e[tag=shieldTick,scores={deflectTimer=0}] deflectTimer 9

tp @e[tag=shieldTick,tag=!shieldUp] ~ ~ ~ ~ ~20
tp @e[tag=shieldTick,tag=shieldUp] ~ ~ ~ ~ ~-20
tag @e[tag=shieldTick] remove shieldTick