#
execute at @s run tp @s ~ ~ ~ ~3 0
effect give @s glowing 10 10 true

team join red @s[tag=redflag]
team join blue @s[tag=blueflag]

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.4
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.4

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run playsound minecraft:item.armor.equip_iron master @a
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run playsound minecraft:item.armor.equip_iron master @a

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run title @a title {"text":"Red Flag Saved","color":"red"}
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run title @a title {"text":"Blue Flag Saved","color":"aqua"}

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] add hasflag
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run tag @p[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] add hasflag

execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..1.8,scores={no_cap=..0}] run kill @s
execute at @s at @s positioned ~ ~1.8 ~ as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..1.8,scores={no_cap=..0}] run kill @s

scoreboard players add @s t 1

execute as @s[scores={t=50..65}] at @s run particle minecraft:smoke ~ ~2 ~ 0.3 0.8 0.3 0 10 force
execute as @s[scores={t=66..}] at @s run particle minecraft:large_smoke ~ ~2 ~ 0.3 0.8 0.3 0 10 force

kill @s[scores={t=80..}]

#
execute at @s positioned ~ ~1.5 ~ if block ~-0.3 ~-0.2 ~-0.3 air if block ~0.3 ~-0.2 ~-0.3 air if block ~-0.3 ~-0.2 ~0.3 air if block ~0.3 ~-0.2 ~0.3 air run tp @s ~ ~-1.55 ~

