# check for powered plates
execute if block ^ ^ ^1 #pressure_plates[powered=true] run return 1
execute if block ^ ^ ^-1 #pressure_plates[powered=true] run return 1

# loop
scoreboard players remove .plates .calc 1
execute if score .plates .calc matches 1.. positioned ^1 ^ ^ run return run function game:gate/check_plates
return fail