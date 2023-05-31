# say running attack_target.mcfunction ...

#> Check target validity
scoreboard players operation @e[tag=targeted] ID.target -= @s ID
tag @e[scores={ID.target=0},tag=targeted] add currentTarget
execute facing entity @e[tag=currentTarget,limit=1] eyes run tp @s ~ ~ ~ ~ ~
# say @e[tag=currentTarget]
scoreboard players operation @e[tag=targeted] ID.target += @s ID
execute unless entity @a[tag=currentTarget,distance=..24,gamemode=!spectator] run function game:ffa/turret/remove_target
scoreboard players set #obstruction .data 0
execute at @e[tag=currentTarget] positioned ~ ~1.8 ~ facing entity @s eyes run function game:ffa/turret/check_obstruction
execute if score #obstruction .data matches 1 run function game:ffa/turret/remove_target
scoreboard players set #obstruction .data 0
execute positioned ~ ~0.8 ~ if data entity @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] attack run damage @s 1 arrow
execute positioned ~ ~0.8 ~ if data entity @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] attack run function game:ffa/turret/remove_target
data remove entity @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] attack

#> Particle raycast
execute anchored eyes facing entity @e[tag=currentTarget] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle

#> FX
execute as @s[scores={turretTimer=..24}] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..24] ~ ~1 ~ 0.1 2 0.075
playsound minecraft:block.note_block.bell master @a[distance=..24] ~ ~1 ~ 0.2 1.7 0.075
execute as @s[scores={turretTimer=25..}] at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..24] ~ ~1 ~ 0.3 1.75 0.15

#> Attack
execute as @s[scores={turretTimer=40..}] at @s run function game:ffa/turret/kill_target

#> Cleanup + increment
scoreboard players add @s turretTimer 1
tag @a remove currentTarget