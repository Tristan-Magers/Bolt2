scoreboard players add .Time .metric 1

scoreboard players operation .time_mod .calc = .Time .metric
scoreboard players operation .time_mod .calc %= .600 .num

execute if score .tmi .data matches 1 if score .time_mod .calc matches 0 run loot give @a[tag=playing] mine 222 -60 -244 air{drop_contents:1b}

scoreboard players operation .time_mod .calc = .Time .metric
scoreboard players operation .time_mod .calc %= .400 .num

execute if score .tmi .data matches 1 if score .time_mod .calc matches 0 run loot give @a[tag=playing] mine 222 -60 -242 air{drop_contents:1b}

scoreboard players operation .time_mod .calc = .Time .metric
scoreboard players operation .time_mod .calc %= .240 .num

execute if score .tmi .data matches 1 if score .time_mod .calc matches 0 run loot give @a[tag=playing] mine 222 -60 -240 air{drop_contents:1b}

#scoreboard players operation .time_mod .calc = .Time .metric
#scoreboard players operation .time_mod .calc %= .140 .num

#execute if score .tmi .data matches 1 if score .time_mod .calc matches 0 run loot give @a[tag=playing] mine 221 -50 -238 air{drop_contents:1b}

execute as @a store result score @s[team=red] drop_magma run clear @s panda_spawn_egg{CustomModelData:3}
execute as @s as @s[team=red,scores={drop_magma=1..}] run function game:player/give/red_spawn


