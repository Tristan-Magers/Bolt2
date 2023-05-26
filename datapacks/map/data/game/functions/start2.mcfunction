scoreboard players set .load .data 80
scoreboard players set .start_cd .data -5

scoreboard players operation .map .data = .map_screen .data
scoreboard players operation .mode .data = .mode_screen .data

function game:game/next_id

schedule clear game:player/subtitle_scramble/schedule_trig