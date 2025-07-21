tag @e remove in_hitbox
tag @e remove in_hitbox_2
execute as @s[scores={t1=2..10}] positioned ~-.75 ~-.5 ~-.75 run tag @p[dx=0,dy=0,dz=0,tag=enemy_player] add in_hitbox
execute as @s[scores={t1=2..10}] positioned ~-.25 ~-.0 ~-.25 run tag @p[dx=0,dy=0,dz=0,tag=enemy_player] add in_hitbox_2
execute as @s[scores={t1=2..10}] positioned ~-.75 ~-.5 ~-.75 run tag @e[dx=0,dy=0,dz=0,type=zombie_villager] add in_hitbox
execute as @s[scores={t1=2..10}] positioned ~-.25 ~-.0 ~-.25 run tag @e[dx=0,dy=0,dz=0,type=zombie_villager] add in_hitbox_2
execute as @s[scores={t1=2..10}] positioned ~-.75 ~-.5 ~-.75 run tag @e[dx=0,dy=0,dz=0,type=creeper] add in_hitbox
execute as @s[scores={t1=2..10}] positioned ~-.25 ~-.0 ~-.25 run tag @e[dx=0,dy=0,dz=0,type=creeper] add in_hitbox_2
tag @e[tag=!in_hitbox_2] remove in_hitbox

function game:id/player

#execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player] run say CUSTOM HIT @a[tag=in_hitbox,tag=enemy_player]
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,limit=1,sort=nearest] as @p[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,tag=!totem,limit=1,sort=nearest] run tag @p[tag=in_hitbox,tag=enemy_player,tag=!totem] add close_hit
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,limit=1,sort=nearest] run effect give @p[tag=in_hitbox,tag=enemy_player] instant_damage
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,limit=1,sort=nearest] run scoreboard players operation @p[tag=in_hitbox,tag=enemy_player] KILL_ID = @p[tag=id_share] ID 
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,tag=!totem,limit=1,sort=nearest] run scoreboard players add @p[tag=id_share] killP 1
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,tag=!totem,limit=1,sort=nearest] run scoreboard players add @p[tag=id_share] kill 1
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,limit=1,sort=nearest] run scoreboard players set @p[tag=in_hitbox,tag=enemy_player] deaths 1
execute as @s[scores={t1=2..10}] if entity @a[tag=in_hitbox,tag=enemy_player,limit=1,sort=nearest] run tag @s add kill

execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] run tag @e[tag=in_hitbox,type=zombie_villager,limit=1,sort=nearest] add kill
execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] if entity @e[tag=in_hitbox,type=zombie_villager,limit=1,sort=nearest] run playsound minecraft:entity.arrow.hit master @a ~ ~ ~
execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] if entity @e[tag=in_hitbox,type=zombie_villager,limit=1,sort=nearest] run tag @s add kill
execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] run damage @e[tag=in_hitbox,type=creeper,limit=1,sort=nearest] 1
execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] if entity @e[tag=in_hitbox,type=creeper,limit=1,sort=nearest] run playsound minecraft:entity.arrow.hit master @a ~ ~ ~
execute as @s[scores={t1=2..10},tag=!kill,tag=!inground] if entity @e[tag=in_hitbox,type=creeper,limit=1,sort=nearest] run tag @s add kill

#
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~-0.25 ~ ~-0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~0.25 ~ ~-0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~-0.25 ~ ~0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~0.25 ~ ~0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~-0.25 ~0.5 ~-0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~0.25 ~0.5 ~-0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~-0.25 ~0.5 ~0.25 0 0 0 0 1 force
#execute as @s[scores={t1=2..8},tag=!kill,tag=!inground] run particle minecraft:dripping_obsidian_tear ~0.25 ~0.5 ~0.25 0 0 0 0 1 force