data modify storage macro gate set from entity @s data.gate
execute store result score .height .calc run data get storage macro gate.height
execute store result score .time .calc run data get storage macro gate.time
scoreboard players operation .value .calc = @s .timer
scoreboard players operation .value .calc /= .time .calc
execute store result storage macro gate.current_height int 1 run scoreboard players operation .value .calc < .height .calc
data modify storage macro gate.y set from entity @s Pos[1]
execute if score .value .calc matches 1.. at @s run function game:gate/editor/stop_macro with storage macro gate
scoreboard players reset @s .timer