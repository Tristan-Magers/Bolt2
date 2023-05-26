#
scoreboard players operation @a ID -= @s ID

#execute as @s[tag=red] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure] run effect give @p[dx=0,dy=0,dz=0,team=blue,gamemode=adventure] instant_damage 1
#execute as @s[tag=red] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=blue,gamemode=adventure] run kill @s

#execute as @s[tag=blue] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure] run effect give @p[dx=0,dy=0,dz=0,team=red,gamemode=adventure] instant_damage 1
#execute as @s[tag=blue] positioned ~ ~ ~ if entity @a[dx=0,dy=0,dz=0,team=red,gamemode=adventure] run kill @s

execute as @s[tag=!shot] at @s run playsound custom:shoot_arrow master @a[scores={ID=1..}]
execute as @s[tag=!shot] at @s run playsound custom:shoot_arrow master @a[scores={ID=..-1}]

execute as @s[tag=!shot] as @a[scores={ID=0}] at @s positioned ^ ^ ^1 positioned ~ ~1.6 ~ run function game:items/arrow/fire_sound

scoreboard players operation @a ID += @s ID