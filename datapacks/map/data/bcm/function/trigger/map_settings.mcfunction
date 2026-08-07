## parse input right to left
# map color
scoreboard players operation .value map_settings = @s map_settings
scoreboard players operation .value map_settings %= .10 .num
execute if score .value map_settings matches 1 run data modify storage bcm registry.mapColor set value green
execute if score .value map_settings matches 2 run data modify storage bcm registry.mapColor set value red
execute if score .value map_settings matches 3 run data modify storage bcm registry.mapColor set value blue
execute if score .value map_settings matches 4 run data modify storage bcm registry.mapColor set value yellow
execute if score .value map_settings matches 5 run data modify storage bcm registry.mapColor set value white
 
# map size
execute store result score .value map_settings run scoreboard players operation @s map_settings /= .10 .num
execute store result storage bcm registry.mapSize int 1 run scoreboard players operation .value map_settings %= .10 .num

# disable walls?
execute store result storage bcm map.disable_walls byte 1 run scoreboard players operation @s map_settings /= .10 .num

scoreboard players reset @s map_settings