##### SPAWNED

execute if entity @s[scores={t4=1}] at @s run function game:items/lower
execute if entity @s[scores={t4=4}] at @s run tp @s ~ ~-0.9 ~

##### CONTROL AND PLANT PARTICLES

scoreboard players add @s t4 1

execute as @s[scores={t4=2}] at @s if block ~ -64 ~ redstone_block run tag @s add cant_place
execute as @s[scores={t4=2}] at @s positioned ~ ~-0.9 ~ if entity @e[type=creeper,distance=..0.2] run tag @s add cant_place

execute if entity @s[scores={t4=2},tag=cant_place] at @s run function game:items/trap/return

execute if entity @s[scores={t4=5}] at @s run function game:items/trap/particle
execute if entity @s[scores={t4=14}] at @s run function game:items/trap/particle
#scoreboard players set @s[scores={t4=200..}] t4 0

data merge entity @s {Size:0,Silent:1,NoAI:1,Health:1}

##### VISIBILITY AND TRIGGER CHECK

execute if entity @s[scores={timer=0},team=red,tag=hidden] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~
execute if entity @s[scores={timer=0},team=blue,tag=hidden] at @s positioned ~ ~0.4 ~ if entity @a[team=red,distance=..4.8] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s positioned ~ ~0.4 ~ unless entity @a[team=blue,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s positioned ~ ~0.4 ~ unless entity @a[team=red,distance=..4.8] run effect give @s minecraft:invisibility 999 10 true

execute if entity @s[scores={timer=0,t4=6..},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,distance=..4.8] run effect clear @s minecraft:invisibility
execute if entity @s[scores={timer=0,t4=6..},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,distance=..4.8] run effect clear @s minecraft:invisibility

execute if entity @s[scores={timer=0},team=red] at @s positioned ~ ~0.4 ~ unless entity @a[team=blue,distance=..4.8] run tag @s add hidden
execute if entity @s[scores={timer=0},team=blue] at @s positioned ~ ~0.4 ~ unless entity @a[team=red,distance=..4.8] run tag @s add hidden

execute if entity @s[scores={timer=0},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,distance=..4.8] run tag @s remove hidden
execute if entity @s[scores={timer=0},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,distance=..4.8] run tag @s remove hidden

scoreboard players add @s timer 0
scoreboard players add @s[scores={timer=1..}] timer 1

execute if entity @s[scores={timer=0},team=red] at @s positioned ~ ~0.4 ~ if entity @a[team=blue,distance=..3.65] run scoreboard players set @s timer 1
execute if entity @s[scores={timer=0},team=blue] at @s positioned ~ ~0.4 ~ if entity @a[team=red,distance=..3.65] run scoreboard players set @s timer 1

##### WHAT HAPPENS WHEN TRIGGERED

effect give @s[scores={timer=1..}] minecraft:glowing 30 30 true

# EXPLODE EFFECT AND BLOCK REMOVAL

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run particle minecraft:explosion_emitter ~ ~1.6 ~ 0.5 0.5 0.5 0 6 force
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run fill ~-2.0 ~-2.0 ~-2.0 ~2.0 ~2.0 ~2.0 air replace gravel

# EXPLODES KILLING PLAYERS (controls tellraw in chat for this occurance as well)

scoreboard players operation @a ID -= @s ID
execute if entity @s[scores={timer=1}] at @s positioned ~ ~0.4 ~ run tellraw @a[scores={ID=0}] [{"text":"[Trap Triggered]","color":"gray"}]

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] killStreak 1
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] killStreak 1

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed] unless entity @a[scores={ID=0,killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"green"},{"selector":"@a[scores={ID=0}]"},{"text":"'s ","color":"gray"},{"text":"Trap","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0}]"}]
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed] if entity @a[scores={ID=0,killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"green"},{"selector":"@a[scores={ID=0}]"},{"text":"'s ","color":"gray"},{"text":"Trap","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[distance=..4.8,scores={respawn=..0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@p[scores={ID=0}]","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players remove @a[scores={ID=0},team=red] killStreak 1
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players remove @a[scores={ID=0},team=blue] killStreak 1

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] kill 1
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] kill 1

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[scores={ID=0},team=red] stats_trap_kills 1
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run execute as @a[distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[scores={ID=0},team=blue] stats_trap_kills 1

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run tag @a[distance=..4.8,scores={respawn=..0,invul=..0}] add exploded
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run tag @a[distance=..4.8,scores={respawn=..0,invul=..0}] add killed
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ if entity @a[distance=..4.8] run effect give @a[distance=..4.8,scores={respawn=..0,invul=..0}] minecraft:instant_damage 1 100 true

scoreboard players operation @a ID += @s ID

# DESTROY GROUND ENTITIES ON EXPLOSION

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run effect give @e[distance=..4.8,type=creeper] glowing 10 10 true

execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=creeper] add kill
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=magma_cube] add kill
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run tag @e[distance=..4.8,type=slime] add kill
execute if entity @s[scores={timer=19..}] at @s positioned ~ ~0.4 ~ run kill @e[distance=..3.0,type=minecraft:falling_block]

# PLAYSOUNDS WHEN TRIGGERED (note: different depending on team)

execute if entity @s[scores={timer=1}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=2}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=4}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=6}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=8}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.1
execute if entity @s[scores={timer=10}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.2
execute if entity @s[scores={timer=12}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
execute if entity @s[scores={timer=14}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=16}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.7
execute if entity @s[scores={timer=18}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.8

#execute if entity @s[scores={timer=21}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.3
#execute if entity @s[scores={timer=22}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6
#execute if entity @s[scores={timer=23}] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0}] ~ ~ ~ 1 0.6

execute if entity @s[scores={timer=1},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=red] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=red] ~ ~ ~ 1 1.7

execute if entity @s[scores={timer=1},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=3},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=5},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=7},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=9},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=11},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=13},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=15},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=17},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7
execute if entity @s[scores={timer=19},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.8
execute if entity @s[scores={timer=21},team=blue] at @s positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.bass master @a[distance=5.0..,scores={respawn=..0},team=blue] ~ ~ ~ 1 1.7

# TEXT WHEN TRIGGERED

execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"! ! !"}
execute if entity @s[scores={timer=1..}] at @s positioned ~ ~0.4 ~ run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"TRAP","color":"gray"}

# KILL SELF

kill @s[scores={timer=19..}]

