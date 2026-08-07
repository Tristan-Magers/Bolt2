#execute at @s positioned ~ ~0.0 ~ run summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0]}
#execute at @s positioned ~ ~0.0 ~ run summon minecraft:slime ~ ~-0.9 ~ {NoAI:1,Size:0}

scoreboard players set @a has_lev 4
effect give @p minecraft:levitation 2 25 true

tp @s ~ ~0.05 ~

execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0,Tags:["boost"],ExplosionRadius:1b,NoAI:1b,Silent:1b}
execute at @s run tp @e[tag=boost,limit=10] @p
execute as @e[tag=boost,limit=10] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=boost,limit=10] at @s run tp @s ^ ^1.54 ^-0.24

team join noCol @e[tag=boost,limit=10]

execute store result score @s t5 run data get entity @s Rotation[1] 1

execute as @s[scores={t5=..-1}] run function game:test2

#scoreboard players set @s kill 10
#scoreboard players set @s deaths 1

scoreboard players set @a[distance=..4,scores={invul=..2}] invul 2