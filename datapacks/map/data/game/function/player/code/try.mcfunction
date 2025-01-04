tag @s remove code_success

# reset
execute as @s[tag=button_confirm] if score @s code_1 matches 2 if score @s code_2 matches 3 if score @s code_3 matches 4 run tag @s add code_success
execute as @s[tag=button_confirm] if score @s code_1 matches 2 if score @s code_2 matches 3 if score @s code_3 matches 4 run function game:player/lock_all
execute as @s[tag=!button_confirm] if score @s code_1 matches 2 if score @s code_2 matches 3 if score @s code_3 matches 4 run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1.5
execute as @s[tag=!button_confirm] if score @s code_1 matches 2 if score @s code_2 matches 3 if score @s code_3 matches 4 run tag @s add button_confirm

# unlock all
execute if score @s code_1 matches 6 if score @s code_2 matches 3 if score @s code_3 matches 2 run tag @s add code_success
execute if score @s code_1 matches 6 if score @s code_2 matches 3 if score @s code_3 matches 2 run function game:player/unlock/all

execute if score @s code_1 matches 6 if score @s code_2 matches 3 if score @s code_3 matches 3 run tag @s add code_success
execute if score @s code_1 matches 6 if score @s code_2 matches 3 if score @s code_3 matches 3 run function game:player/unlock/all_achievements

# ctf
execute if score @s code_1 matches 3 if score @s code_2 matches 0 if score @s code_3 matches 8 run tag @s add code_success
execute if score @s code_1 matches 3 if score @s code_2 matches 0 if score @s code_3 matches 8 run function game:player/code/ctf

# elo
execute if score @s code_1 matches 1 if score @s code_2 matches 3 if score @s code_3 matches 7 run tag @s add code_success
execute if score @s code_1 matches 1 if score @s code_2 matches 3 if score @s code_3 matches 7 run function game:player/code/elo

# general
execute if score @s code_1 matches 7 if score @s code_2 matches 2 if score @s code_3 matches 0 run tag @s add code_success
execute if score @s code_1 matches 7 if score @s code_2 matches 2 if score @s code_3 matches 0 run function game:player/code/general

# infected
execute if score @s code_1 matches 9 if score @s code_2 matches 9 if score @s code_3 matches 7 run tag @s add code_success
execute if score @s code_1 matches 9 if score @s code_2 matches 9 if score @s code_3 matches 7 run function game:player/code/infected

# lobby
execute if score @s code_1 matches 3 if score @s code_2 matches 0 if score @s code_3 matches 3 run tag @s add code_success
execute if score @s code_1 matches 3 if score @s code_2 matches 0 if score @s code_3 matches 3 run function game:player/code/lobby

# tmi
execute if score @s code_1 matches 9 if score @s code_2 matches 2 if score @s code_3 matches 0 run tag @s add code_success
execute if score @s code_1 matches 9 if score @s code_2 matches 2 if score @s code_3 matches 0 run function game:player/code/tmi

# target
execute if score @s code_1 matches 1 if score @s code_2 matches 3 if score @s code_3 matches 0 run tag @s add code_success
execute if score @s code_1 matches 1 if score @s code_2 matches 3 if score @s code_3 matches 0 run function game:player/code/target

#
playsound minecraft:ui.toast.challenge_complete master @s[tag=code_success] ~ ~ ~ 0.3 1.66
playsound minecraft:block.note_block.bass master @s[tag=!code_success,tag=!button_confirm] ~ ~ ~ 0.7 0.5
playsound minecraft:ui.button.click master @s[tag=!code_success] ~ ~ ~ 0.5 1.82