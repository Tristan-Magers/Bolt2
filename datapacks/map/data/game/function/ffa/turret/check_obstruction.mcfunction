# say running check_obstruction.mcfunction ...
# particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1 force @a

#execute if score #debugPart .data matches 0 run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 1 force
#execute if score #debugPart .data matches 1 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 0 1 force

scoreboard players set #turretHitbox .data 0
tag @s remove in
function game:physics/inblock
execute as @s[tag=!in] run scoreboard players set #obstruction .data 1
# execute if score #obstruction .data matches 1 run say obstructed
execute positioned ~-0.005 ~-0.005 ~-0.005 as @s[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players set #turretHitbox .data 1
# execute if score #turretHitbox .data matches 1 run say at turret
execute unless score #turretHitbox .data matches 1 positioned ^ ^ ^0.22 run function game:ffa/turret/check_obstruction