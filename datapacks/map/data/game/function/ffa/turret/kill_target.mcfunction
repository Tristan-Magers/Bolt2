#> FX
scoreboard players set @s turretTimer 50
#execute positioned ~ ~1.8 ~ facing entity @e[tag=currentTarget,limit=1] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle

execute anchored eyes facing entity @e[tag=currentTarget,limit=1] eyes positioned ^ ^ ^0.2 run function game:ffa/turret/particle

execute at @e[tag=currentTarget] run particle explosion ~ ~1.8 ~ 0 0 0 1 1 force @a
execute at @e[tag=currentTarget] run particle flash ~ ~1.8 ~ 0 0 0 1 1 force @a
execute unless entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
execute unless entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1.3
execute unless entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute unless entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 0.7

execute if entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1.1
execute if entity @e[tag=currentTarget,type=minecraft:zombie_villager] at @e[tag=currentTarget] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1.5

damage @e[tag=currentTarget,limit=1] 1 minecraft:arrow

#
function game:id/player

execute if entity @p[tag=currentTarget,team=red,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] as @a[tag=id_share,team=blue] at @s run scoreboard players add @s kill 1
execute if entity @p[tag=currentTarget,team=blue,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] as @a[tag=id_share,team=red] at @s run scoreboard players add @s kill 1

execute if entity @p[tag=currentTarget,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] as @a[tag=id_share] at @s run scoreboard players add @s killStreak 1

execute if entity @p[tag=currentTarget,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] unless entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"💥 ","color":"white"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Turret","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[tag=currentTarget]"}]
execute if entity @p[tag=currentTarget,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] if entity @a[tag=id_share,scores={killStreak=2..}] run tellraw @a [{"text":"💥 ","color":"white"},{"selector":"@a[tag=id_share]"},{"text":"'s ","color":"gray"},{"text":"Turret","color":"white"},{"text":" hit ","color":"gray"},{"selector":"@a[tag=currentTarget]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@p[tag=id_share]","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute if entity @p[tag=currentTarget,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] as @a[tag=id_share] at @s run scoreboard players remove @s killStreak 1

execute if entity @p[tag=currentTarget,tag=!totem,scores={invul=..0,hurt=..1},gamemode=adventure,tag=!shot_by_turret] as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0.5

#> Kill
execute at @a[tag=hasTurret] if score @p ID = @s ID run tag @p add executioner
damage @e[tag=currentTarget,limit=1] 982 minecraft:arrow by @a[tag=executioner,limit=1]
tag @e[tag=currentTarget,limit=1] add turretDead
tag @e[tag=currentTarget,limit=1] add shot_by_turret

#> Cleanup
tag @s add laser
function game:ffa/turret/remove_target