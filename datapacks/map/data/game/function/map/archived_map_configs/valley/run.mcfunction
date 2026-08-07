# detect door buttons
execute if score .valley_door_blue .timer matches 40.. run scoreboard players set .valley_door_blue_on .timer 0
execute if score .valley_door_red .timer matches 40.. run scoreboard players set .valley_door_red_on .timer 0

execute if block -413 -49 -20 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -413 -49 -21 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -413 -49 -22 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1

execute if block -413 -49 54 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -413 -49 53 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -413 -49 52 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1

#setdoor timer
execute if score .valley_door_blue_on .timer matches 0 run scoreboard players remove .valley_door_blue .timer 1
execute if score .valley_door_blue_on .timer matches 1 run scoreboard players add .valley_door_blue .timer 1

execute if score .valley_door_red_on .timer matches 0 run scoreboard players remove .valley_door_red .timer 1
execute if score .valley_door_red_on .timer matches 1 run scoreboard players add .valley_door_red .timer 1

execute if score .valley_door_blue .timer matches ..0 run scoreboard players set .valley_door_blue .timer 0
execute if score .valley_door_red .timer matches ..0 run scoreboard players set .valley_door_red .timer 0

execute if score .valley_door_blue .timer matches 40.. run scoreboard players set .valley_door_blue .timer 40
execute if score .valley_door_red .timer matches 40.. run scoreboard players set .valley_door_red .timer 40

#open/close door
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 18 run fill -414 -47 -20 -414 -47 -22 minecraft:spruce_fence
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 12 run fill -414 -48 -20 -414 -48 -22 minecraft:spruce_fence
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 6 run fill -414 -49 -20 -414 -49 -22 minecraft:spruce_fence

execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 18 run fill -414 -47 -20 -414 -47 -22 minecraft:spruce_fence destroy
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 12 run fill -414 -48 -20 -414 -48 -22 minecraft:spruce_fence destroy
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 6 run fill -414 -49 -20 -414 -49 -22 minecraft:spruce_fence destroy

execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 18 run fill -414 -47 -20 -414 -47 -22 air destroy
execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 12 run fill -414 -48 -20 -414 -48 -22 air destroy
execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 6 run fill -414 -49 -20 -414 -49 -22 air destroy

execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 18 run fill -414 -47 54 -414 -47 52 minecraft:spruce_fence
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 12 run fill -414 -48 54 -414 -48 52 minecraft:spruce_fence
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 6 run fill -414 -49 54 -414 -49 52 minecraft:spruce_fence

execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 18 run fill -414 -47 54 -414 -47 52 minecraft:spruce_fence destroy
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 12 run fill -414 -48 54 -414 -48 52 minecraft:spruce_fence destroy
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 6 run fill -414 -49 54 -414 -49 52 minecraft:spruce_fence destroy

execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 18 run fill -414 -47 54 -414 -47 52 air destroy
execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 12 run fill -414 -48 54 -414 -48 52 air destroy
execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 6 run fill -414 -49 54 -414 -49 52 air destroy
