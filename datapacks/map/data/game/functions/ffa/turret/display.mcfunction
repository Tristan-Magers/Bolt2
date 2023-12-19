#
execute as @s[team=red] at @s run team join red @e[tag=turret_stand,limit=1,sort=nearest]
execute as @s[team=blue] at @s run team join blue @e[tag=turret_stand,limit=1,sort=nearest]

execute as @s[team=red] at @s run team join red @e[tag=turret_head,limit=1,sort=nearest]
execute as @s[team=blue] at @s run team join blue @e[tag=turret_head,limit=1,sort=nearest]

#
tag @e remove turret_displaying

#
execute at @s[team=red] run tag @e[tag=turret_stand,limit=1,sort=nearest,tag=!turret_display,tag=red] add turret_displaying
execute at @s[team=red] run tag @e[tag=turret_head,limit=1,sort=nearest,tag=!turret_display,tag=red] add turret_displaying

execute at @s[team=blue] run tag @e[tag=turret_stand,limit=1,sort=nearest,tag=!turret_display,tag=blue] add turret_displaying
execute at @s[team=blue] run tag @e[tag=turret_head,limit=1,sort=nearest,tag=!turret_display,tag=blue] add turret_displaying

#
execute at @s[team=red] positioned ~ ~-1.8 ~ run tp @e[tag=turret_stand,limit=1,tag=turret_displaying,sort=nearest,tag=red] @s
execute at @s[team=red] positioned ~ ~-.8 ~ run tp @e[tag=turret_head,limit=1,tag=turret_displaying,sort=nearest,tag=red] @s

execute at @s[team=red] positioned ~ ~-1.8 ~ run tp @e[tag=turret_stand,limit=1,tag=turret_displaying,sort=nearest,tag=red] ~ ~ ~
execute at @s[team=red] positioned ~ ~-.8 ~ run tp @e[tag=turret_head,limit=1,tag=turret_displaying,sort=nearest,tag=red] ~ ~ ~

execute at @s[team=blue] positioned ~ ~-1.8 ~ run tp @e[tag=turret_stand,limit=1,tag=turret_displaying,sort=nearest,tag=blue] @s
execute at @s[team=blue] positioned ~ ~-.8 ~ run tp @e[tag=turret_head,limit=1,tag=turret_displaying,sort=nearest,tag=blue] @s

execute at @s[team=blue] positioned ~ ~-1.8 ~ run tp @e[tag=turret_stand,limit=1,tag=turret_displaying,sort=nearest,tag=blue] ~ ~ ~
execute at @s[team=blue] positioned ~ ~-.8 ~ run tp @e[tag=turret_head,limit=1,tag=turret_displaying,sort=nearest,tag=blue] ~ ~ ~

#
tag @e[tag=turret_displaying] add turret_display

#
scoreboard players add @s t2 1
scoreboard players set @s[scores={t2=6..}] t2 0
execute as @s[team=red,scores={t2=1}] at @s run particle minecraft:flame ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force
execute as @s[team=blue,scores={t2=1}] at @s run particle minecraft:soul_fire_flame ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force

#
effect give @s minecraft:invisibility infinite 10 true