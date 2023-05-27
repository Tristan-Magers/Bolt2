execute as @s[scores={turretTimer=..20}] run particle crit ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[scores={turretTimer=20..}] run particle dust 1.0 0 0 0.75 ~ ~3 ~ 0 0 0 0 1 force @a
execute unless entity @e[tag=currentTarget,dx=0,dy=0.01,dz=0] positioned ^ ^ ^0.2 run function game:ffa/turret/particle