$return run dialog show @s {\
  type: "minecraft:confirmation",\
  title: "Gate Setup",\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: "height",\
      label: "Height",\
      label_format: "%s: %s blocks",\
      start: 1,\
      end: 9,\
      step: 1,\
      initial: $(height)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "width",\
      label: "Width",\
      label_format: "%s: %s blocks",\
      start: 1,\
      end: 9,\
      step: 1,\
      initial: $(width)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "time",\
      label: "Opening Time",\
      label_format: "%s: %s ticks/block",\
      start: 2,\
      end: 100,\
      step: 1,\
      initial: $(time)\
    },\
    {\
      type: "minecraft:single_option",\
      key: "sound",\
      label: "Sound",\
      options: $(sound_options)\
    }\
  ],\
  no: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger set_gate set -1"\
    }\
  },\
  yes: {\
    label: {\
      translate: "gui.done"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      template: "trigger set_gate set $(macro)"\
    }\
  },\
}