advancement revoke @s only game:balloon

scoreboard players set @s balloon_release 0

scoreboard players set .count .calc 0
execute store result score .count .calc run data get entity @s SelectedItem.count

execute if score .count .calc matches 2.. run item modify entity @s[tag=last_balloon] weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b,conditions:[]}]
execute if score .count .calc matches 2.. run tag @s remove last_balloon

execute as @s[scores={balloon_cooldown=..0,balloon_count=..3},tag=!last_balloon] run function game:items/balloon/summon_vis