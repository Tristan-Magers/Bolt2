kill @e[type=item]

kill @e[tag=blueflag]
kill @e[tag=redflag]

scoreboard players set .gametime .data 0

scoreboard players set .running .data 0

function game:game/next_id
execute as @a run function game:player/leave_game