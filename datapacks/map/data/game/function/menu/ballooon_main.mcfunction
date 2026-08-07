scoreboard players set @a balloon_count 0
tag @a remove has_balloon
scoreboard players add @a balloon_release 1
execute as @a if items entity @s weapon.mainhand string run scoreboard players set @s balloon_release 0
tag @a[scores={balloon_release=0..125}] add has_balloon
execute as @a[scores={balloon_release=50}] run function game:items/balloon/pop_ran
execute as @a[scores={balloon_release=85}] run function game:items/balloon/pop_ran
execute as @a[scores={balloon_release=110}] run function game:items/balloon/pop_ran
execute as @a[scores={balloon_release=125}] run function game:items/balloon/pop_ran

execute as @e[tag=balloon,type=pig,tag=!hitbox] at @s run function game:items/balloon/vis_main

scoreboard players set @a[scores={balloon_count=0}] balloon_release 121
tag @a[scores={balloon_count=0}] remove has_balloon

execute as @a[tag=!has_balloon,tag=has_balloon2,tag=last_balloon] run clear @s string 1

tag @a[tag=!has_balloon,tag=!new_balloon] remove last_balloon
tag @a remove new_balloon
scoreboard players set @a use_balloon 0

tag @a[tag=has_balloon] add has_balloon2
tag @a[tag=!has_balloon] remove has_balloon2

execute as @a[tag=has_balloon,scores={balloon_count=1}] run attribute @s minecraft:gravity base set 0.045
execute as @a[tag=has_balloon,scores={balloon_count=2}] run attribute @s minecraft:gravity base set 0.04
execute as @a[tag=has_balloon,scores={balloon_count=3}] run attribute @s minecraft:gravity base set 0.035
execute as @a[tag=has_balloon,scores={balloon_count=4..}] run attribute @s minecraft:gravity base set 0.03
execute as @a[tag=has_balloon] run attribute @s minecraft:jump_strength base set 0.6
execute as @a[tag=!has_balloon] run attribute @s minecraft:jump_strength base reset
#execute as @a[tag=!has_balloon] run attribute @s minecraft:gravity base reset

scoreboard players remove @a[scores={balloon_cooldown=1..}] balloon_cooldown 1

execute as @a run attribute @s minecraft:bounciness base reset
execute as @e[tag=balloon_plat] at @s positioned ~ ~1.5 ~ as @a[distance=..1.9] run attribute @s minecraft:bounciness base set 0.35

tag @a remove on_balloon
execute as @e[tag=balloon_plat] at @s positioned ~ ~1.5 ~ as @a[distance=..1.9] run tag @s[nbt={OnGround:1b}] add on_balloon

scoreboard players remove @a[scores={balloon_land_sound_cool=1..}] balloon_land_sound_cool 1

execute as @a[tag=on_balloon,tag=!on_balloon2] unless entity @s[scores={balloon_land_sound_cool=1..}] at @s run playsound custom:balloon master @a[distance=..16] ~ ~ ~ 1 1.5
execute as @a[tag=on_balloon,tag=!on_balloon2] unless entity @s[scores={balloon_land_sound_cool=1..}] at @s run scoreboard players set @s balloon_land_sound_cool 6

tag @a[tag=on_balloon] add on_balloon2
tag @a[tag=!on_balloon] remove on_balloon2

scoreboard players remove @a[scores={balloon_talk_cool=1..}] balloon_talk_cool 1

execute as @e[tag=balloon_guy_interact] on target run function game:menu/balloon_guy_interact
scoreboard players add @a[scores={balloon_talk=3..}] balloon_talk2 1
scoreboard players set @a[scores={balloon_talk2=600..}] balloon_talk 0

execute as @e[tag=balloon_guy] at @s unless entity @p[distance=..7] run tp @s ~ ~ ~ 10 0
execute as @e[tag=balloon_guy] at @s if entity @p[distance=..7] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=balloon_guy] at @s if entity @p[distance=..7] run tp @s ~ ~ ~ ~135 0

execute as @e[tag=coin_interact] run function game:menu/coin_interact

kill @e[scores={t1=8..},tag=coin_vis]
scoreboard players add @e[scores={t1=1..},tag=coin_vis] t1 1

#
tag @e remove balloon_extra

execute as @e[tag=balloon] on passengers as @s run tag @s add balloon_extra

kill @e[tag=balloon_interact,tag=!balloon_extra]
kill @e[tag=balloon_display,tag=!balloon_extra]