#
execute store result score .random .calc run random value 0..23

execute if score .random .calc matches 0..2 run function game:player/give/grenade

execute if score .random .calc matches 3..5 run function game:player/give/trap

execute if score .random .calc matches 6..8 run function game:player/give/wall
execute if score .random .calc matches 6..8 run function game:player/give/wall

execute if score .random .calc matches 9..11 as @s[team=red] run function game:player/give/red_spawn
execute if score .random .calc matches 9..11 as @s[team=blue] run function game:player/give/blue_spawn

execute if score .random .calc matches 12 run function game:player/give/reveal

execute if score .random .calc matches 13..14 run function game:player/give/turret
execute if score .random .calc matches 23 run function game:player/give/turret

execute if score .random .calc matches 15 run function game:player/give/shield

execute if score .random .calc matches 16 run function game:player/give/crossbow

execute if score .random .calc matches 17 run function game:player/give/boost

execute if score .random .calc matches 18..20 run function game:player/give/balloon
execute if score .random .calc matches 18..20 run function game:player/give/balloon

execute if score .random .calc matches 21..22 run function game:player/give/zombie
execute if score .random .calc matches 21..22 run function game:player/give/zombie

#
item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b,conditions:[]}]

#
scoreboard players set @s coin_cooldown 3
