tag @a remove is_target

execute on target run tag @s add is_target
execute on target run function game:player/give/coin

execute if entity @p[tag=is_target] at @s run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 2
execute if entity @p[tag=is_target] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 2
execute if entity @p[tag=is_target] at @s run function game:menu/coin_spawn
execute if entity @p[tag=is_target] at @s run tag @e[tag=coin_spawn,limit=1,sort=nearest] remove has_coin
execute if entity @p[tag=is_target] at @s run scoreboard players set @e[tag=coin_vis,distance=..1] t1 1
execute if entity @p[tag=is_target] at @s run data merge entity @e[tag=coin_vis,limit=1,sort=nearest] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.0f,0.0f],scale:[0.1f,0.1f,0.1f]}}
execute if entity @p[tag=is_target] run kill @s