$return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Map Settings",\
  inputs: [\
    {\
      type: "minecraft:single_option",\
      key: "color",\
      label: "Map Color",\
      options: [\
        {\
          id: "1",\
          display: {\
            translate: color.minecraft.green,\
            color: green\
          },\
          initial: $(initial_green)b\
        },\
        {\
          id: "2",\
          display: {\
            translate: color.minecraft.red,\
            color: red\
          },\
          initial: $(initial_red)b\
        },\
        {\
          id: "3",\
          display: {\
            translate: color.minecraft.blue,\
            color: blue\
          },\
          initial: $(initial_blue)b\
        },\
        {\
          id: "4",\
          display: {\
            translate: color.minecraft.yellow,\
            color: yellow\
          },\
          initial: $(initial_yellow)b\
        },\
        {\
          id: "5",\
          display: [\
            {\
              translate: color.minecraft.black,\
              color: white\
            },\
            " & ",\
            {\
              translate: color.minecraft.white,\
              color: white\
            }\
          ],\
          initial: $(initial_white)b\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      key: "size",\
      label: "Size Rating",\
      options: [\
        {\
          id: "0",\
          display: "Very Small",\
          initial: $(initial_very_small)b\
        },\
        {\
          id: "1",\
          display: "Small",\
          initial: $(initial_small)b\
        },\
        {\
          id: "2",\
          display: "Medium",\
          initial: $(initial_medium)b\
        },\
        {\
          id: "3",\
          display: "Large",\
          initial: $(initial_large)b\
        }\
      ]\
    },\
    {\
      type: "minecraft:boolean",\
      key: "disable_walls",\
      label: "Disable Walls",\
      initial: $(initial_disable_walls)b,\
      on_true: "1",\
      on_false: "0"\
    }\
  ],\
  exit_action: {\
    label: {\
      translate: gui.done\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger map_settings set $(macro)"\
    }\
  },\
  actions: [\
    {\
      label: "Set Spawn Invulnerability Times...",\
      width: 200,\
      action: {\
        type: "minecraft:dynamic/run_command",\
        template: "trigger map_settings set -$(macro)"\
      }\
    }\
  ]\
}