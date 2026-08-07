# detect door buttons
execute if score .valley_door_blue .timer matches 40.. run scoreboard players set .valley_door_blue_on .timer 0
execute if score .valley_door_red .timer matches 40.. run scoreboard players set .valley_door_red_on .timer 0

execute if block -386 8 108 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -386 8 107 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -386 8 106 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1

execute if block -386 8 182 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -386 8 181 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -386 8 180 minecraft:dark_oak_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1

execute if block -388 8 108 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -388 8 107 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1
execute if block -388 8 106 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_blue_on .timer 1

execute if block -388 8 182 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -388 8 181 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1
execute if block -388 8 180 minecraft:stone_pressure_plate[powered=true] run scoreboard players set .valley_door_red_on .timer 1

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
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 18 run fill -387 10 108 -387 10 106 minecraft:spruce_fence
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 12 run fill -387 9 108 -387 9 106 minecraft:spruce_fence
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 6 run fill -387 8 108 -387 8 106 minecraft:spruce_fence

execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 18 run fill -387 10 108 -387 10 106 minecraft:spruce_fence destroy
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 12 run fill -387 9 108 -387 9 106 minecraft:spruce_fence destroy
execute if score .valley_door_blue_on .timer matches 0 if score .valley_door_blue .timer matches 6 run fill -387 8 108 -387 8 106 minecraft:spruce_fence destroy

execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 18 run fill -387 10 108 -387 10 106 air destroy
execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 12 run fill -387 9 108 -387 9 106 air destroy
execute if score .valley_door_blue_on .timer matches 1 if score .valley_door_blue .timer matches 6 run fill -387 8 108 -387 8 106 air destroy

execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 18 run fill -387 10 182 -387 10 180 minecraft:spruce_fence
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 12 run fill -387 9 182 -387 9 180 minecraft:spruce_fence
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 6 run fill -387 8 1824 -387 8 180 minecraft:spruce_fence

execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 18 run fill -387 10 182 -387 10 180 minecraft:spruce_fence destroy
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 12 run fill -387 9 182 -387 9 180 minecraft:spruce_fence destroy
execute if score .valley_door_red_on .timer matches 0 if score .valley_door_red .timer matches 6 run fill -387 8 182 -387 8 180 minecraft:spruce_fence destroy

execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 18 run fill -387 10 182 -387 10 180 air destroy
execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 12 run fill -387 9 182 -387 9 180 air destroy
execute if score .valley_door_red_on .timer matches 1 if score .valley_door_red .timer matches 6 run fill -387 8 182 -387 8 180 air destroy
