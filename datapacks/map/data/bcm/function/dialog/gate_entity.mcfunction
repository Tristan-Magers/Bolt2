tag @s add editing
tag @s remove this

# passenger item to find player via "execute on origin"
summon item ~ ~ ~ {Item:{id:"yellow_stained_glass_pane",count:1},Tags:[no_kill,init],Invulnerable:1b,PickupDelay:32767s,Age:-32768s}
ride @n[type=item,tag=init] mount @s
execute on passengers run data modify entity @s Thrower set from entity @p UUID
execute on passengers run tag @s remove init

# get current settings values
data modify storage bcm macro merge from entity @s data.gate
execute unless data entity @s data.gate.sound run return run data modify storage bcm macro.sound_options[0].initial set value true
execute if data entity @s data.gate.sound{\
    open: {\
        name: "block.piston.contract",\
        pitch: 1f,\
    },\
    close: {\
        name: "block.piston.extend",\
        pitch: 1f,\
    },\
} run return run data modify storage bcm macro.sound_options[1].initial set value true
execute unless data entity @s data.gate.sound.open if data entity @s data.gate.sound{\
    close: {\
        name: "block.piston.extend",\
        pitch: 1f,\
    },\
} run return run data modify storage bcm macro.sound_options[2].initial set value true
return run data modify storage bcm macro.sound_options set value [{\
    id: "0",\
    display: {text: "Manually Set", hover_event: {action: "show_text", value: "This gate's sounds were manually set to a custom value."}},\
    initial: true\
}]