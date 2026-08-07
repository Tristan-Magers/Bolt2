tag @e remove me
tag @s add me

tag @a remove leasher

execute on leasher as @s run tag @s add leasher

data remove entity @s[tag=release] leash

tag @s[tag=saveme] add saveme2
tag @s remove saveme
execute as @s[tag=!release] unless entity @p[tag=leasher] run data modify entity @s leash.UUID set from entity @s data.uuidsave
execute as @s[tag=!release] unless entity @p[tag=leasher] run tag @a remove close_owner
execute as @s[tag=!release] unless entity @p[tag=leasher] run scoreboard players operation @a ID -= @s ID
execute as @s[tag=!release] unless entity @p[tag=leasher] run tag @a[scores={ID=0}] add close_owner
execute as @s[tag=!release] unless entity @p[tag=leasher] run scoreboard players operation @a ID += @s ID
execute as @s[tag=!release] at @s unless entity @p[tag=leasher] if entity @p[tag=close_owner,distance=..10] run tag @s[tag=!saveme2] add saveme
tag @s remove saveme2

execute as @s[tag=saveme] run return fail

execute on leasher run scoreboard players add @s balloon_count 1

execute as @s run execute store result score @s hurt run data get entity @s HurtTime 1

tag @s[scores={hurt=9..}] add pop
execute on passengers as @s[type=pig] on attacker run tag @e[tag=me] add pop

scoreboard players add @s t1 1
scoreboard players add @s t2 1
execute as @s[scores={t1=33..}] store result score @s t1 run random value 0..5

attribute @s[scores={t1=0..14}] gravity base set -0.01
attribute @s[scores={t1=15..29}] gravity base set -0.01
execute at @s unless entity @a[tag=leasher,distance=..4.5] run attribute @s gravity base set 0.05
execute at @s unless entity @a[tag=leasher,distance=..5.5] run attribute @s gravity base set 0.1

execute store result score .y1 .calc run data get entity @s Pos[1] 10
execute on leasher store result score .y2 .calc run data get entity @s Pos[1] 10

execute store result score .motx .calc run data get entity @s Motion[0] 100
execute store result score .motz .calc run data get entity @s Motion[2] 100

attribute @s minecraft:scale base set 0.0
execute as @s[tag=!release] if entity @e[tag=balloon,tag=!hitbox,distance=..0.9,tag=!me,scores={t3=0}] if score .motx .calc matches -2..2 if score .motx .calc matches -2..2 run function game:items/balloon/rand_move
scoreboard players remove @s[scores={t3=1..}] t3 1

scoreboard players add .y2 .calc 24
execute if score .y1 .calc < .y2 .calc run attribute @s gravity base set -0.02
execute if score .y1 .calc < .y2 .calc run scoreboard players set @s t1 1

scoreboard players remove .y2 .calc 15
execute if score .y1 .calc < .y2 .calc run attribute @s gravity base set -0.04

tag @a remove attacker

attribute @s[tag=release] gravity base set -0.03
effect give @s[tag=release] levitation infinite 4 true
scoreboard players add @s[tag=release] balloon_release 1
tag @s[scores={balloon_release=38..}] add pop

execute as @s[tag=release,tag=!release2] at @s run playsound minecraft:item.lead.break master @a
tag @s[tag=release] add release2

execute if entity @e[tag=leasher,tag=!has_balloon] run tag @s add release
execute as @s[scores={t2=2..}] unless entity @a[tag=leasher] run tag @s add release
execute on passengers as @s[type=interaction] on attacker run tag @s add attacker
execute if entity @p[tag=attacker] run function game:items/balloon/hit

#execute as @s[tag=pop] as @a[tag=leasher] run clear @s string 1 

execute as @s[tag=pop] run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 0.5 2
execute as @s[tag=pop] run playsound minecraft:block.lava.pop master @a ~ ~ ~ 1 1.6
execute as @s[tag=pop] run particle minecraft:poof ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force

execute as @s[tag=pop] on passengers run tag @s add kill
execute as @s[tag=pop] run tag @s add kill

effect give @s[scores={t1=0..14}] levitation infinite 0 true
effect clear @s[scores={t1=20..}] levitation

effect give @s slow_falling infinite 0 true

attribute @s minecraft:air_drag_modifier base set 1.5
execute at @s unless entity @a[tag=leasher,distance=..4.5] run attribute @s minecraft:air_drag_modifier base set 0.7

execute as @s[tag=!pop] run tag @a[tag=leasher] add has_balloon_vis

tag @s remove me