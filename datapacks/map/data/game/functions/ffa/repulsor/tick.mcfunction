# say running tick.mcfunction

#> Reflect
tag @s add shieldDeflector
#! Commented out because delta isn't added yet, see bottom of game:ffa/main.mcfunction
# tag @a[gamemode=!spectator,distance=..2.5,tag=!shieldDeflector] add shieldDelta
execute positioned ~ ~1 ~ as @e[type=arrow,distance=..2.5] run function game:ffa/repulsor/reflect
# execute unless entity @a[gamemode=!spectator,distance=..2.5,tag=!shieldDeflector] run tag @s remove shieldDeflector
tag @a remove shieldDeflector

#> FX
execute as @e[tag=shieldDisplay] if score @p ID = @s ID run tag @s add shieldTick

# tellraw @a [{"text":"Shield display step: "},{"score":{"objective":"deflectTimer","name":"@e[tag=shieldDisplay,limit=1]"}},{"text":" Shield up: "},{"selector":"@e[tag=shieldUp,limit=1]"},{"text":" Shield down: "},{"selector":"@e[tag=!shieldUp,tag=shieldTick,limit=1]"}]

tag @e[tag=shieldTick,scores={deflectTimer=0},tag=!shieldUp] add shieldSwitchUp
tag @e[tag=shieldTick,scores={deflectTimer=0},tag=shieldUp] add shieldSwitchDown

tag @e[tag=shieldSwitchUp] add shieldUp
tag @e[tag=shieldSwitchDown] remove shieldUp
tag @e remove shieldSwitchUp
tag @e remove shieldSwitchDown

scoreboard players set @e[scores={deflectTimer=0},tag=shieldTick] deflectTimer 13

execute as @e[tag=shieldTick,tag=!shieldUp] at @s run tp @s ~ ~ ~ ~ ~15
execute as @e[tag=shieldTick,tag=shieldUp] at @s run tp @s ~ ~ ~ ~ ~-15

tp @e[tag=shieldTick] ~ ~2 ~
execute as @e[tag=shieldTick] at @s positioned ~ ~-0.9 ~ run function game:ffa/repulsor/display
scoreboard players reset .rotateStep .num

tag @e[tag=shieldTick] remove shieldTick