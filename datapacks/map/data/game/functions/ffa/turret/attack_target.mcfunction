#> Check target validity
scoreboard players operation @e[tag=targeted] ID.target -= @s ID
tag @e[scores={ID.target=0},tag=targeted] add currentTarget
scoreboard players operation @e[tag=targeted] ID.target += @s ID
execute if entity @e[tag=currentTarget,distance=24..] run function game:ffa/turret/remove_target
scoreboard players set #obstruction .data 0
tag @s add targeting
execute at @e[tag=currentTarget] positioned ~ ~1 ~ facing entity @s eyes run function game:ffa/turret/check_obstruction
tag @s remove targeting
execute if score #obstruction .data matches 1 run function game:ffa/turret/remove_target
execute as @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] if data entity @s attack run function game:ffa/turret/remove_target
data remove entity @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] attack

#> Particle raycast
execute anchored eyes facing entity @e[tag=currentTarget] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle

#> FX
playsound minecraft:entity.elder_guardian.curse master @a ~ ~1 ~ 0.2 2
playsound minecraft:block.note_block.bell master @a ~ ~1 ~ 0.2 1.7
execute as @s[scores={turretTimer=20..}] at @s run playsound entity.blaze.hurt master @a ~ ~1 ~ 0.2 1.5

#> Attack
execute as @s[scores={turretTimer=30..}] at @s run function game:ffa/turret/kill_target

#> Cleanup + increment
scoreboard players add @s turretTimer 1
tag @a remove currentTarget