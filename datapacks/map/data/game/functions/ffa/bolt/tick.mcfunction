#> FX
particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[scores={boltDelay=4..}] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.3 1

#> Detect
execute if block ~ ~ ~ #game:bolt_place run tag @s add boltKill
scoreboard players operation @a ID -= @s ID
tag @a[scores={ID=0}] add boltOwner
execute at @s[tag=!boltKill] positioned ~-0.005 ~-0.005 ~-0.005 as @e[type=!marker,dx=0,limit=1,tag=!boltOwner] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add boltTarget
# say @e[tag=boltTarget]
execute if entity @e[tag=boltTarget] run tag @s add boltKill
execute as @a[tag=boltOwner] run damage @e[tag=boltTarget,limit=1] 1000 arrow
tag @a remove boltOwner
scoreboard players operation @a ID += @s ID

#> Kill
execute as @s[tag=boltKill] run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 0.5 2
execute as @s[tag=boltKill] run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 0.3 1
execute as @s[tag=boltKill] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.3 2
execute as @s[tag=boltKill] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.25 80 force @a
execute as @s[tag=boltKill] run scoreboard players reset .boltTick .num
kill @s[tag=boltKill]

#> Loop
scoreboard players add .boltTick .num 1
tp @s ^ ^ ^0.2
execute at @s[tag=!boltKill] if score .boltTick .num matches ..14 run function game:ffa/bolt/tick
execute if score .boltTick .num matches 14.. run scoreboard players reset .boltTick .num