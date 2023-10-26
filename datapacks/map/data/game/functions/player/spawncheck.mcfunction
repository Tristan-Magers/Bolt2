function game:id/spawn

execute if entity @e[tag=spawn,tag=id_share] run tag @s add hasspawn
execute unless entity @e[tag=spawn,tag=id_share] run tellraw @s[tag=hasspawn,tag=!used_spawn] {"text":"[ SPAWN POINT KILLED ]"}
execute unless entity @e[tag=spawn,tag=id_share] at @s run playsound minecraft:item.bone_meal.use master @s[tag=hasspawn,tag=!used_spawn] ~ ~ ~ 1 0
execute unless entity @e[tag=spawn,tag=id_share] at @s run playsound minecraft:block.mud.break master @s[tag=hasspawn,tag=!used_spawn] ~ ~ ~ 1 0
execute unless entity @e[tag=spawn,tag=id_share] at @s run playsound minecraft:entity.villager.hurt master @s[tag=hasspawn,tag=!used_spawn] ~ ~ ~ 0.6 0
execute unless entity @e[tag=spawn,tag=id_share] at @s run playsound minecraft:entity.turtle.egg_break master @s[tag=hasspawn,tag=!used_spawn] ~ ~ ~ 1 1
execute unless entity @e[tag=spawn,tag=id_share] at @s run playsound minecraft:block.note_block.bass master @s[tag=hasspawn,tag=!used_spawn] ~ ~ ~ 1 0.95
execute unless entity @e[tag=spawn,tag=id_share] run tag @s[tag=hasspawn] remove used_spawn
execute unless entity @e[tag=spawn,tag=id_share] run tag @s remove hasspawn