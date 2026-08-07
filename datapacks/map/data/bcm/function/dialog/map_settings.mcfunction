# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {\
    macro: "$(disable_walls)$(size)$(color)",\
    initial_green: false,\
    initial_red: false,\
    initial_blue: false,\
    initial_yellow: false,\
    initial_white: false,\
    initial_very_small: false,\
    initial_small: false,\
    initial_medium: false,\
    initial_large: false,\
    initial_disable_walls: false,\
}

# get current values
data modify storage bcm macro.initial_disable_walls set from storage bcm map.disable_walls
execute store result score .size .calc run data get storage bcm registry.mapSize
execute if score .size .calc matches 0 run data modify storage bcm macro.initial_very_small set value true
execute if score .size .calc matches 1 run data modify storage bcm macro.initial_small set value true
execute if score .size .calc matches 2 run data modify storage bcm macro.initial_medium set value true
execute if score .size .calc matches 3 run data modify storage bcm macro.initial_large set value true
execute if data storage bcm {registry:{mapColor:green}} run data modify storage bcm macro.initial_green set value true
execute if data storage bcm {registry:{mapColor:red}} run data modify storage bcm macro.initial_red set value true
execute if data storage bcm {registry:{mapColor:blue}} run data modify storage bcm macro.initial_blue set value true
execute if data storage bcm {registry:{mapColor:yellow}} run data modify storage bcm macro.initial_yellow set value true
execute if data storage bcm {registry:{mapColor:white}} run data modify storage bcm macro.initial_white set value true

# show dialog
scoreboard players enable @s map_settings
execute store success score .success map_settings run function bcm:dialog/map_settings_macro with storage bcm macro
execute if score .success map_settings matches 1 run return 1

# catch error
trigger map_settings set 0
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}