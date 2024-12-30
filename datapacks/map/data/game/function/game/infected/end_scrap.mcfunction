scoreboard players set @a invul 101

title @a times 20 60 20
title @a title {"text":"SURVIVORS WIN!","color":"dark_aqua","font":"fancy"}

scoreboard players set .end_countdown .data 100

# win as survivor achievement
execute if score .players_playing .data matches 2.. as @a[tag=locked_25,tag=sur_start] run function game:player/unlock/25