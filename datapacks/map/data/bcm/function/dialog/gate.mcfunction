# @s = player opening dialog
# positioned at gate block_display

# escape sequences don't work on macros, but we can do this instead
data modify storage bcm macro set value {\
    macro: "$(time)$(sound)$(width)$(height)",\
    height: 4,\
    width: 3,\
    time: 6,\
    sound_options: [\
        {\
          id: "1",\
          display: "Inherit from blocks",\
          initial: false\
        },\
        {\
          id: "2",\
          display: "Piston",\
          initial: false\
        },\
        {\
          id: "3",\
          display: "Inherit/Piston",\
          initial: false\
        },\
    ]\
}

# link player to gate block_display
tag @n[type=block_display,tag=gate] add this
execute as @n[type=block_display,tag=gate,tag=this] if entity @s[tag=editing] as @p run function bcm:fail/actionbar {input:'"This gate is already being edited"'}
execute as @n[type=block_display,tag=gate,tag=this] if entity @s[tag=editing] run return run tag @s remove this
execute at @s as @n[type=block_display,tag=gate,tag=this] run function bcm:dialog/gate_entity

# show dialog
scoreboard players enable @s set_gate
execute store success score .success set_gate run function bcm:dialog/gate_macro with storage bcm macro
execute if score .success set_gate matches 1 run return 1

# catch error
trigger set_gate set -1
return run function bcm:fail/tellraw {input:'"ERROR: couldn\'t show dialog; sending default input"'}