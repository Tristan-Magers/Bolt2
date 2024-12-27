#> Feather
#execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s unless score @s speedTimer matches 1.. run function game:ffa/feather/use
#execute as @a[scores={speedTimer=1..}] run function game:ffa/feather/speed_tick
#scoreboard players remove @a[scores={speedTimer=1..}] speedTimer 1

#> Repulsor
#execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:heart_of_the_sea"}}] at @s unless score @s deflectTimer matches 1.. run function game:ffa/repulsor/use
#execute as @a[scores={deflectTimer=1..}] at @s run function game:ffa/repulsor/tick
#execute as @a[scores={deflectTimer=1}] at @s run function game:ffa/repulsor/end
#scoreboard players remove @e[scores={deflectTimer=1..}] deflectTimer 1
#kill @e[type=arrow,scores={deflectTimer=1}]

#> Bolt
#scoreboard players remove @a[scores={boltDelay=1..}] boltDelay 1
#execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond"}}] at @s unless score @s boltDelay matches 1.. run function game:ffa/bolt/use
#execute as @a[scores={boltDelay=1}] at @s run function game:ffa/bolt/fire
#kill @e[tag=bolt,scores={boltDelay=100}]
#scoreboard players add @e[tag=bolt] boltDelay 1
#execute as @e[tag=bolt] at @s run function game:ffa/bolt/tick
#scoreboard players reset .boltTick .num

#> Firework Launcher
#execute as @a[tag=chargedCross] unless data entity @s SelectedItem.tag{Firework:1b} run tag @s remove chargedCross
#execute as @a[tag=!chargedCross] if data entity @s SelectedItem.tag{Firework:1b} run item modify entity @s weapon.mainhand game:ffa/crossbow/unfirework
#execute as @a if data entity @s SelectedItem.tag.ChargedProjectiles[{id:"minecraft:arrow"}] run tag @s add chargedCross
#item modify entity @a[tag=chargedCross] weapon.mainhand game:ffa/crossbow/firework
# # execute if entity @a[scores={crossUse=1..}] run say @a[scores={crossUse=1..}]
#tag @a[scores={crossUse=1..}] remove chargedCross
#item modify entity @a[scores={crossUse=1..}] weapon.mainhand game:ffa/crossbow/damage
#scoreboard players set @a[scores={crossUse=1..}] crossUse 0

#> Calverin
#execute as @e[tag=turret_stand] at @s if entity @e[type=pig,distance=..3] run kill @s
#execute as @e[tag=turret_head] at @s if entity @e[type=pig,distance=..3] run kill @s
#execute as @e[tag=turretPunch] at @s if entity @e[type=pig,distance=..3] run kill @s

tag @a remove executioner
tag @a remove turretDead
tag @a[scores={placeTurret=1..},tag=turret_dif] add turretSpawn
execute as @e[type=pig,tag=!turret,tag=!chair] at @s run function game:ffa/turret/spawn
execute as @e[tag=turret,scores={turretCooldown=1}] at @s run data remove entity @e[type=interaction,tag=turretPunch,sort=nearest,limit=1] attack 
scoreboard players remove @e[tag=turret,scores={turretCooldown=1..}] turretCooldown 1
execute as @e[tag=turret,tag=!hasTarget,scores={turretCooldown=0,blind=..0}] at @s run function game:ffa/turret/find_target
execute as @e[tag=turret,tag=hasTarget,scores={turretCooldown=0,blind=..0}] at @s run function game:ffa/turret/attack_target
execute as @e[tag=turret,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1
execute as @e[tag=turret,nbt={HurtTime:9s}] run scoreboard players remove @s .num 1
execute as @e[tag=turret,nbt={HurtTime:9s}] at @s on attacker if score .tmi .data matches 1 if score .tmi_arrow .data matches 2 run tag @s add arrow_hit
execute as @e[tag=turret,nbt={HurtTime:9s}] at @s run particle minecraft:large_smoke ~ ~0.7 ~ 0.2 0.2 0.2 0.2 10 force
execute as @e[tag=turret,scores={.num=..0}] at @s run function game:ffa/turret/kill_self
execute as @e[tag=turret] at @s if block ~ ~-1 ~ air run function game:ffa/turret/kill_self
tag @e remove turret_display
execute as @e[type=pig,tag=turret,tag=!chair] at @s run function game:ffa/turret/display
tag @a remove turretSpawn
tag @a remove hasTurret2

scoreboard players set @a placeTurret 0
tag @a remove shot_by_turret

execute as @e[tag=turret,scores={blind=0..}] at @s run particle dust_plume ~ ~1.1 ~ 0.25 0 0.25 0.05 2 force
scoreboard players remove @e[tag=turret,scores={blind=0..}] blind 1

#> Delta
# Currently commented out because delta api isn't added right now, will finish once it is (or you can do it yourself); ideally should launch players like 3 blocks away 
# scoreboard players set $strength delta.api.launch 1000
# execute as @a[tag=shieldDelta] at @s facing entity @a[tag=shieldDeflector,limit=1] feet run execute rotated ~-180 ~ run function delta:api/launch_looking 
# tag @a remove shieldDeflector
# tag @a remove shieldDelta