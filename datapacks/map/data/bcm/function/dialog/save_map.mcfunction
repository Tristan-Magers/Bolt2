scoreboard players enable @s save_map
return run dialog show @s {\
  title: "Save Map",\
  type: "minecraft:confirmation",\
  inputs: [\
    {\
      initial: true,\
      type: "minecraft:boolean",\
      key: "overwrite",\
      label: "Overwrite Existing Map",\
      on_true: "1",\
      on_false: "2"\
    },\
    {\
      initial: true,\
      type: "minecraft:boolean",\
      key: "block",\
      label: "Include Block Changes",\
      on_true: "1",\
      on_false: "0"\
    }\
  ],\
  yes: {\
    label: {\
      translate: "gui.proceed"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger save_map set $(block)$(overwrite)"\
    }\
  },\
  no: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger save_map set 0"\
    }\
  }\
}