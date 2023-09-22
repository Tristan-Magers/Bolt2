#
scoreboard players add @s t1 1

data merge entity @s[scores={t1=2..7}] {LeftOwner:1b}

scoreboard players operation @a ID -= @s ID

#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] as @p[scores={ID=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0},tag=!totem] run tag @p[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] add close_hit
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] run effect give @p[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] instant_damage
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] run scoreboard players operation @p[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] KILL_ID = @p[scores={ID=0}] ID 
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0},tag=!totem] run scoreboard players add @p[scores={ID=0}] killP 1
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] run scoreboard players set @p[dx=0,dy=0,dz=0,team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] deaths 1
#execute as @s[tag=red,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure] run tag @s add kill

#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] as @p[scores={ID=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.2 0
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0},tag=!totem] run tag @p[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] add close_hit
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] run effect give @p[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] instant_damage
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] run scoreboard players operation @p[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] KILL_ID = @p[scores={ID=0}] ID
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0},tag=!totem] run scoreboard players add @p[scores={ID=0}] killP 1
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] run scoreboard players set @p[dx=0,dy=0,dz=0,team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] deaths 1
#execute as @s[tag=blue,scores={t1=2..7}] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure] run tag @s add kill

execute as @s[tag=!shot] at @s run playsound custom:shoot_arrow master @a[scores={ID=1..}]
execute as @s[tag=!shot] at @s run playsound custom:shoot_arrow master @a[scores={ID=..-1}]

execute as @s[tag=!shot] as @a[scores={ID=0}] at @s positioned ^ ^ ^1 positioned ~ ~1.6 ~ run function game:items/arrow/fire_sound

scoreboard players operation @a ID += @s ID

kill @s[tag=kill]