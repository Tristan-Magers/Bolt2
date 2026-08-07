# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {\
    macro: "$(ctf)789$(infection)",\
    initial_ctf: 40,\
    initial_infection: 40,\
}

# get current values
data modify storage bcm macro.initial_ctf set from storage bcm map.invuln_ctf
data modify storage bcm macro.initial_infection set from storage bcm map.invuln_infection

# show dialog
scoreboard players enable @s set_map_invuln
execute store success score .success set_map_invuln run function bcm:dialog/map_invuln_macro with storage bcm macro
execute if score .success set_map_invuln matches 1 run return 1

# catch error
trigger set_map_invuln set 0
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}