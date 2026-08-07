$return run dialog show @s {\
    type: "minecraft:multi_action",\
    title: "Custom Random Settings",\
    after_action: "none",\
    pause: 0b,\
    exit_action: {\
        label: {\
            translate: gui.done\
        },\
        width: 200,\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger custom_random_dialog set -1"\
        }\
    },\
    actions: $(actions)\
}