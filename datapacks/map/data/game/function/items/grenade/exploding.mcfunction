execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players add @a[tag=id_share,team=red] killStreak 1
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players add @a[tag=id_share,team=blue] killStreak 1

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] as @a[tag=id_share,team=red] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0.5
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] as @a[tag=id_share,team=blue] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0.5

execute as @s[scores={timer=17}] if entity @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed,tag=!gre_immune] unless entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"white"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Grenade","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune,tag=playing]"}]
execute as @s[scores={timer=17}] if entity @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!killed,tag=!gre_immune] if entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"☠ ","color":"white"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Grenade","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune,tag=playing]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@p[tag=id_share]","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed] run scoreboard players remove @a[tag=id_share,team=red] killStreak 1
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed] run scoreboard players remove @a[tag=id_share,team=blue] killStreak 1

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=red] kill 1
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=blue] kill 1

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=blue,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=red] stats_ger_kills 1
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run execute as @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},team=red,tag=!killed,tag=!gre_immune] run scoreboard players add @a[tag=id_share,team=blue] stats_ger_kills 1

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run tag @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] add exploded
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run tag @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] add killed

execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run playsound minecraft:item.shield.block master @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune] ~ ~ ~ 1 0
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:blindness 4 100 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] fog_remove 64
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:slowness 3 2 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=blue] minecraft:glowing 3 2 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:blindness 3 100 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run scoreboard players set @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] fog_remove 44
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:slowness 2 1 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=gre_immune,team=red] minecraft:glowing 2 2 true
execute as @s[scores={timer=17}] if entity @a[distance=..4.8] run effect give @a[gamemode=adventure,distance=..4.8,scores={respawn=..0,invul=..0},tag=!gre_immune] minecraft:instant_damage 1 100 true

execute as @s[scores={timer=17}] run kill @e[distance=..4.8,type=minecraft:zombie_villager]

### KILL ENTITIES ON EXPLOSION

execute as @s[scores={timer=17}] run effect give @e[distance=..4.8,type=magma_cube] glowing 10 10 true
execute as @s[scores={timer=17}] run effect give @e[distance=..4.8,type=slime] glowing 10 10 true
execute as @s[scores={timer=17}] run effect give @e[distance=..4.8,type=creeper] glowing 10 10 true

execute as @s[scores={timer=17}] run kill @e[distance=..4.8,type=magma_cube]
execute as @s[scores={timer=17}] run kill @e[distance=..4.8,type=slime]
execute as @s[scores={timer=17}] run kill @e[distance=..4.8,type=creeper]
execute as @s[scores={timer=17}] run kill @e[distance=..3.0,type=minecraft:falling_block]

execute as @s[scores={timer=17}] as @e[distance=..4.8,tag=turret] run function game:ffa/turret/kill_self

### SOUNDS

execute as @s[scores={timer=-7}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-6}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-5}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-4}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-3}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=-2}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=-1}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=0}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=1}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=2}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=4}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.1 0.6
execute as @s[scores={timer=6}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=8}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.2 0.6
execute as @s[scores={timer=10}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.3 0.6
execute as @s[scores={timer=12}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.4 0.6
execute as @s[scores={timer=13}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.5 0.6
execute as @s[scores={timer=14}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.7 0.6
execute as @s[scores={timer=15}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.8 0.6
execute as @s[scores={timer=16}] run playsound minecraft:block.note_block.bit master @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] ~ ~ ~ 1 0.6 0.6

execute as @s[scores={timer=-7..}] run tag @a[distance=..4.8,scores={respawn=..0},tag=!ger_sound] add ger_sound

### TITLE TEXT

execute as @s run title @a[distance=..4.8,scores={respawn=..0}] times 0 3 0
execute as @s run title @a[distance=..4.8,scores={respawn=..0}] title {"text":"!!!","font":"fancy"}
execute as @s run title @a[distance=..4.8,scores={respawn=..0}] subtitle {"text":"GRENADE","font":"fancy"}