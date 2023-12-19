# say running attack_target.mcfunction ...

tag @e remove me
tag @s add me

#> Check target validity
scoreboard players operation @e[tag=targeted] ID.turret -= @s ID.target
tag @e[scores={ID.turret=0},tag=targeted] add currentTarget
execute facing entity @e[tag=currentTarget,limit=1] eyes run tp @s ~ ~ ~ ~ ~
# say @e[tag=currentTarget]
scoreboard players operation @e[tag=targeted] ID.turret += @s ID.target
execute if entity @s[nbt={HurtTime:9s}] run damage @s 1 arrow
execute if entity @s[nbt={HurtTime:9s}] run function game:ffa/turret/remove_target
execute if entity @a[tag=currentTarget,gamemode=spectator] run function game:ffa/turret/remove_target
execute unless entity @e[tag=currentTarget,distance=..20] run function game:ffa/turret/remove_target
scoreboard players set #obstruction .data 0
execute at @e[tag=currentTarget] positioned ~ ~1.4 ~ facing entity @s eyes run function game:ffa/turret/check_obstruction
execute if score #obstruction .data matches 1 run function game:ffa/turret/remove_target
scoreboard players set #obstruction .data 0

#> Particle raycast
execute at @s run tp @s ~ ~0.3 ~
execute at @s anchored eyes facing entity @e[tag=currentTarget] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle
execute at @s run tp @s ~ ~-0.3 ~

#> FX
execute as @s[scores={turretTimer=1}] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..24] ~ ~1 ~ 0.1 2 0.075
#execute as @s[scores={turretTimer=4}] run playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
#execute as @s[scores={turretTimer=8}] run playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
#execute as @s[scores={turretTimer=12}] run playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
#execute as @s[scores={turretTimer=16}] run playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
#execute as @s[scores={turretTimer=20}] run playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
execute as @s[scores={turretTimer=22}] at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..24] ~ ~1 ~ 0.3 1.75 0.15

#> Attack
execute if entity @e[tag=currentTarget,type=minecraft:zombie_villager] as @s[scores={turretTimer=20..}] at @s run function game:ffa/turret/kill_target
execute as @s[scores={turretTimer=32..}] at @s run function game:ffa/turret/kill_target

#> Cleanup + increment
scoreboard players add @s turretTimer 1
tag @e remove currentTarget

#
tag @s remove me

#say attack