execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID -= @s ID

tag @a remove red_temp
tag @a[team=red,tag=blue_died] add red_temp
#tag @a[team=red,scores={respawn=1..}] add red_temp
#tag @a[team=red,scores={deaths=1..}] add red_temp

scoreboard players set @a[tag=close_hit] hurt 9
tag @a remove close_hit

execute if score .mode .data = .6 .num as @s[team=red] run team join blue @a[tag=red_temp]

# achievments
execute as @s[team=red,tag=locked_45] at @p[team=blue,scores={hurt=9,KILL_ID=0},tag=glow_temp] run function game:player/unlock/45
execute as @s[team=blue,tag=locked_45] at @p[team=red,scores={hurt=9,KILL_ID=0},tag=glow_temp] run function game:player/unlock/45

execute as @s[team=red,tag=locked_43] at @p[team=blue,scores={hurt=9,KILL_ID=0,boost_time=1..}] if score .tmi .data matches 1 run function game:player/unlock/43
execute as @s[team=blue,tag=locked_43] at @p[team=red,scores={hurt=9,KILL_ID=0,boost_time=1..}] if score .tmi .data matches 1 run function game:player/unlock/43

execute as @s[team=red,tag=locked_40] at @p[team=blue,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if score .mode .data matches 1 if score .tmi .data matches 0 run function game:player/unlock/40
execute as @s[team=blue,tag=locked_40] at @p[team=red,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if score .mode .data matches 1 if score .tmi .data matches 0 run function game:player/unlock/40

execute as @s[team=red,tag=locked_69,tag=hasflag_temp] at @p[team=blue,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if score .mode .data matches 1 if score .tmi .data matches 0 run function game:player/unlock/69
execute as @s[team=blue,tag=locked_69,tag=hasflag_temp] at @p[team=red,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if score .mode .data matches 1 if score .tmi .data matches 0 run function game:player/unlock/69

execute as @s[team=red,tag=locked_17] at @p[team=blue,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if entity @e[type=armor_stand,tag=flag,team=blue,distance=..9] run function game:player/unlock/17
execute as @s[team=blue,tag=locked_17] at @p[team=red,scores={hurt=9,KILL_ID=0},tag=hasflag_temp] if entity @e[type=armor_stand,tag=flag,team=red,distance=..9] run function game:player/unlock/17

execute as @s[team=red,tag=locked_3] if entity @a[team=blue,scores={hurt=9,KILL_ID=0},tag=falling_temp] run function game:player/unlock/3
execute as @s[team=blue,tag=locked_3] if entity @a[team=red,scores={hurt=9,KILL_ID=0},tag=falling_temp] run function game:player/unlock/3

execute as @s[team=red,tag=falling,tag=locked_74] if entity @a[team=blue,scores={hurt=9,KILL_ID=0}] run function game:player/unlock/74
execute as @s[team=blue,tag=falling,tag=locked_74] if entity @a[team=red,scores={hurt=9,KILL_ID=0}] run function game:player/unlock/74

# text
execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[team=blue] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[team=red] [{"text":"🏹 ","color":"gray"},{"selector":"@s"},{"text":" shot ","color":"gray"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

#
execute as @s[team=red,scores={killP=1..,killStreak=..1}] run tellraw @a[gamemode=spectator,tag=!playing] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"}]
execute as @s[team=blue,scores={killP=1..,killStreak=..1}] run tellraw @a[gamemode=spectator,tag=!playing] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"}]

execute as @s[team=red,scores={killP=1..,killStreak=2..}] run tellraw @a[gamemode=spectator,tag=!playing] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=blue,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
execute as @s[team=blue,scores={killP=1..,killStreak=2..}] run tellraw @a[gamemode=spectator,tag=!playing] [{"text":"🏹 ","color":"white"},{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@a[team=red,scores={hurt=9,KILL_ID=0}]"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"killStreak"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]

#
team join red @a[tag=red_temp]
tag @a remove red_temp

execute as @s[scores={killP=1..}] run scoreboard players operation @a KILL_ID += @s ID