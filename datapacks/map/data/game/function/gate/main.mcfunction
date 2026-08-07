# @s = gate in game

# check pressure plates
execute store result score .plates .calc run data get entity @s data.gate.width
scoreboard players add .plates .calc 2
execute positioned ^-1 ^ ^ store success score .gate_opening .calc run function game:gate/check_plates

# update timer
execute if score .gate_opening .calc matches 1 run scoreboard players add @s .timer 1
execute store result score .height .calc run data get entity @s data.gate.height
execute store result score .time .calc run data get entity @s data.gate.time
scoreboard players operation .max_time .calc = .height .calc
scoreboard players add .max_time .calc 2
scoreboard players operation .max_time .calc *= .time .calc
scoreboard players operation @s .timer < .max_time .calc

# calculate current height
execute store result score .current_height .calc run scoreboard players operation .current_time .calc = @s .timer
scoreboard players operation .current_time .calc %= .time .calc
scoreboard players operation .current_height .calc /= .time .calc
#title @a actionbar [{score:{name:".current_height",objective:".calc"}},":",{score:{name:".current_time",objective:".calc"}}," (",{score:{name:"@s",objective:".timer"}},")"]

# moved layer?
execute if score .gate_opening .calc matches 1 if score .current_time .calc matches 1 if score .current_height .calc <= .height .calc if score .current_height .calc matches 1.. run function game:gate/up
execute if score .gate_opening .calc matches 0 if score .current_time .calc matches 1 if score .current_height .calc <= .height .calc if score .current_height .calc matches 1.. run function game:gate/down

# offset by 1 tick to prevent bugs when switching directions same tick as gate moves
execute if score .gate_opening .calc matches 0 run scoreboard players remove @s[scores={.timer=1..}] .timer 1