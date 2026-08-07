$return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Item Generator Settings",\
  body: {\
    type: "minecraft:plain_message",\
    contents: "\n\n\n"\
  },\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: "time",\
      width: 400,\
      label: "Item Every",\
      label_format: "%s %s seconds",\
      start: 1,\
      end: 180,\
      step: 1,\
      initial: $(time)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "warmup",\
      width: 400,\
      label: "Warm-up Delay",\
      label_format: "%s: %s seconds",\
      start: 0,\
      end: 180,\
      step: 1,\
      initial: $(warmup)\
    }\
  ],\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "run_command",\
      command: "trigger set_item_generator set -2"\
    }\
  },\
  actions: [\
    {\
      label: {\
        translate: "gui.done"\
      },\
      action: {\
        type: "dynamic/run_command",\
        template: "trigger set_item_generator set $(macro)"\
      }\
    },\
    {\
      label: {\
        translate: "dataPack.validation.reset"\
      },\
      action: {\
        type: "run_command",\
        command: "trigger set_item_generator set -1"\
      }\
    }\
  ]\
}