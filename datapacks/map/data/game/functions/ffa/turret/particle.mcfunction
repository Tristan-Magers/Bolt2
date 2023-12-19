scoreboard players set #turretHitbox .data 0
execute as @s[scores={turretTimer=..49},team=blue] run particle dust 0.0 0.75 0.8 0.4 ~ ~-0.2 ~ 0 0 0 0 1 force @a
execute as @s[scores={turretTimer=..49},team=red] run particle dust 1.0 0.4 0.2 0.4 ~ ~-0.2 ~ 0 0 0 0 1 force @a

execute as @s[scores={turretTimer=50}] run particle dragon_breath ~ ~-0.2 ~ 0 0 0 0 1 force @a
execute as @s[scores={turretTimer=50}] run particle crit ~ ~-0.2 ~ 0 0 0 0 1 force @a
execute as @s[scores={turretTimer=50}] run particle falling_obsidian_tear ~ ~-.35 ~ 0 0 0 0 1 force @a

execute positioned ~-0.005 ~-0.005 ~-0.005 as @e[tag=currentTarget,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players set #turretHitbox .data 1
execute unless score #turretHitbox .data matches 1 positioned ^ ^ ^0.22 run function game:ffa/turret/particle
