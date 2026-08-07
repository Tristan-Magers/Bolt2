scoreboard players enable @s targets_and_crates
return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Targets & Crates Menu",\
  inputs: [],\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger targets_and_crates set 0"\
    }\
  },\
  columns: 1,\
  actions: [\
    {\
      label: [\
        "",\
        {\
          text: "Load",\
          color: "yellow"\
        },\
        " Targets"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "Are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "LOAD",\
                color: "yellow"\
              },\
              " all saved ",\
              {\
                text: "TARGETS",\
                color: "red"\
              },\
              " for this map into the editor.\n\nCurrently existing targets will be preserved.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          yes: {\
            label: [\
              "",\
              {\
                text: "Load",\
                color: "yellow"\
              },\
              " Saved Targets"\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 10"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Load",\
          color: "yellow"\
        },\
        " Crates "\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "Are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "LOAD",\
                color: "yellow"\
              },\
              " all saved ",\
              {\
                text: "CRATES",\
                color: "gold"\
              },\
              " for this map into the editor.\n\nIf an existing crate is in the same position as a saved crate, the existing crate will be ",\
              {\
                text: "REPLACED",\
                color: "yellow"\
              },\
              " with the saved crate.\n\nOther existing crates will be preserved.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          yes: {\
            label: [\
              "",\
              {\
                text: "Load",\
                color: "yellow"\
              },\
              " Saved Crates"\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 11"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Destroy",\
          color: "red"\
        },\
        " Targets"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "DESTROY",\
                color: "red"\
              },\
              " all placed ",\
              {\
                text: "TARGETS",\
                color: "red"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          yes: {\
            label: [\
              "",\
              {\
                text: "Destroy",\
                color: "red"\
              },\
              " Placed Targets"\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 20"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Destroy",\
          color: "red"\
        },\
        " Crates"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "Are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "DESTROY",\
                color: "red"\
              },\
              " all placed ",\
              {\
                text: "CRATES",\
                color: "gold"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          yes: {\
            label: [\
              "",\
              {\
                text: "Destroy",\
                color: "red"\
              },\
              " Placed Crates"\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 21"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Destroy",\
          color: "red"\
        },\
        " All"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "DESTROY",\
                color: "red"\
              },\
              " all placed ",\
              {\
                text: "TARGETS and CRATES",\
                color: "light_purple"\
              },\
              " in the map editor.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          yes: {\
            label: [\
              "",\
              {\
                text: "Destroy",\
                color: "red"\
              },\
              " Placed Targets and Crates"\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 22"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Save",\
          color: "green"\
        },\
        " Targets"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "Are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "SAVE",\
                color: "green"\
              },\
              " placed ",\
              {\
                text: "TARGETS",\
                color: "red"\
              },\
              " in the map editor, ",\
              {\
                text: "REPLACING",\
                color: "yellow"\
              },\
              " the old set of targets, if it exists.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          inputs: [\
            {\
              type: "minecraft:boolean",\
              key: "overwrite",\
              label: "Overwrite Existing Map",\
              initial: 1b,\
              on_true: "1",\
              on_false: "0"\
            }\
          ],\
          yes: {\
            label: [\
              "",\
              {\
                text: "Save",\
                color: "green"\
              },\
              " Targets and ",\
              {\
                text: "Replace",\
                color: "yellow"\
              }\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:dynamic/run_command",\
              template: "trigger targets_and_crates set $(overwrite)30"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    },\
    {\
      label: [\
        "",\
        {\
          text: "Save",\
          color: "green"\
        },\
        " Crates"\
      ],\
      width: 200,\
      action: {\
        type: "minecraft:show_dialog",\
        dialog: {\
          type: "minecraft:confirmation",\
          title: "Are you sure?",\
          body: {\
            type: "minecraft:plain_message",\
            contents: [\
              "This will ",\
              {\
                text: "SAVE",\
                color: "green"\
              },\
              " placed ",\
              {\
                text: "CRATES",\
                color: "gold"\
              },\
              " in the map editor, ",\
              {\
                text: "REPLACING",\
                color: "yellow"\
              },\
              " the old set of crates, if it exists.\n\nAre you sure you wish to continue?"\
            ]\
          },\
          inputs: [\
            {\
              type: "minecraft:boolean",\
              key: "overwrite",\
              label: "Overwrite Existing Map",\
              initial: 1b,\
              on_true: "1",\
              on_false: "0"\
            }\
          ],\
          yes: {\
            label: [\
              "",\
              {\
                text: "Save",\
                color: "green"\
              },\
              " Crates and ",\
              {\
                text: "Replace",\
                color: "yellow"\
              }\
            ],\
            width: 250,\
            action: {\
              type: "minecraft:dynamic/run_command",\
              template: "trigger targets_and_crates set $(overwrite)31"\
            }\
          },\
          no: {\
            label: {\
              translate: "gui.cancel"\
            },\
            width: 250,\
            action: {\
              type: "minecraft:run_command",\
              command: "trigger targets_and_crates set 0"\
            }\
          }\
        }\
      }\
    }\
  ]\
}