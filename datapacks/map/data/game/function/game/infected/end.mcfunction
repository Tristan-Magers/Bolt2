scoreboard players set @a invul 101

title @a times 20 60 20
title @a title {"text":"INFECTED WIN!","color":"red","font":"fancy"}

scoreboard players set .end_countdown .data 100

# win as infected achievement
execute if score .players_playing .data matches 2.. as @a[tag=locked_1,tag=!sur_start] run function game:player/unlock/1
