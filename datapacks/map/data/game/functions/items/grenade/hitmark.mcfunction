scoreboard players add @s timer 1

effect give @s minecraft:glowing 30 30 true

execute as @s[scores={timer=17..}] at @s run particle minecraft:explosion_emitter ~ ~1.6 ~ 0.5 0.5 0.5 0 6 force
execute as @s[scores={timer=17..}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ if entity @a[distance=..4.9] run effect give @a[distance=..4.9,scores={respawn=..0}] minecraft:instant_damage 1 100 true

execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run effect give @e[distance=..4.9,type=magma_cube] glowing 10 10 true
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run effect give @e[distance=..4.9,type=slime] glowing 10 10 true
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run effect give @e[distance=..4.9,type=creeper] glowing 10 10 true

execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run kill @e[distance=..4.9,type=magma_cube]
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run kill @e[distance=..4.9,type=slime]
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run kill @e[distance=..4.9,type=creeper]
execute as @s[scores={timer=17..}] at @s positioned ~ ~1.6 ~ run kill @e[distance=..3.0,type=minecraft:falling_block]

execute as @s[scores={timer=1}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute as @s[scores={timer=2}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=4}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute as @s[scores={timer=6}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=8}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute as @s[scores={timer=10}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute as @s[scores={timer=12}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.4
execute as @s[scores={timer=13}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.5
execute as @s[scores={timer=14}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.7
execute as @s[scores={timer=15}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.8
execute as @s[scores={timer=16}] at @s positioned ~ ~1.6 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.9,scores={respawn=..0}] ~ ~ ~ 1 0.6

execute as @s at @s positioned ~ ~1.6 ~ run title @a[distance=..4.9,scores={respawn=..0}] times 0 3 0
execute as @s at @s positioned ~ ~1.6 ~ run title @a[distance=..4.9,scores={respawn=..0}] title {"text":"! ! !"}

kill @s[scores={timer=17..}]