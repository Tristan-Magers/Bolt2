#
execute at @s run tp @s ~ ~ ~ ~3 0
effect give @s glowing 10 10 true

team join red @s[tag=redflag]
team join blue @s[tag=blueflag]

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] as @a[team=blue] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.4
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] as @a[team=red] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.4

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] as @a at @s run playsound minecraft:item.armor.equip_iron master @s
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] as @a at @s run playsound minecraft:item.armor.equip_iron master @s

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.hurt master @s
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] as @a[team=blue] at @s run playsound minecraft:entity.ender_dragon.hurt master @s

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run title @a[tag=!lobby] title {"text":"Red Flag Saved","color":"red","font":"fancy"}
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run title @a[tag=!lobby] title {"text":"Blue Flag Saved","color":"aqua","font":"fancy"}

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] add hasflag
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] add hasflag

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run kill @s
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run kill @s

scoreboard players add @s t 1

execute as @s[scores={t=2}] at @s run playsound minecraft:entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0 1
execute as @s[scores={t=2}] at @s run playsound minecraft:entity.creaking.step master @a[distance=..16] ~ ~ ~ 0.6 0 0.6
execute as @s[scores={t=2}] at @s run playsound minecraft:entity.zombie.destroy_egg master @a[distance=..16] ~ ~ ~ 0.6 0 0.6
execute as @s[scores={t=2}] at @s run playsound minecraft:item.wolf_armor.damage master @a[distance=..16] ~ ~ ~ 1 0 1

execute as @s[scores={t=45..60}] at @s run particle minecraft:smoke ~ ~2 ~ 0.3 0.8 0.3 0 10 force
execute as @s[scores={t=61..}] at @s run particle minecraft:large_smoke ~ ~2 ~ 0.3 0.8 0.3 0 10 force

kill @s[scores={t=75..}]

#
execute at @s positioned ~ ~1.5 ~ if block ~-0.3 ~-0.2 ~-0.3 air if block ~0.3 ~-0.2 ~-0.3 air if block ~-0.3 ~-0.2 ~0.3 air if block ~0.3 ~-0.2 ~0.3 air run tp @s ~ ~-1.55 ~
execute at @s positioned ~ ~1.5 ~ if block ~-0.3 ~-0.2 ~-0.3 air if block ~0.3 ~-0.2 ~-0.3 air if block ~-0.3 ~-0.2 ~0.3 air if block ~0.3 ~-0.2 ~0.3 air run tp @s ~ ~-1.55 ~
