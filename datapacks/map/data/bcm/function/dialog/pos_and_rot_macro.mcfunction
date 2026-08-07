$return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Position & Rotation",\
  body: {\
    type: "minecraft:plain_message",\
    contents: ""\
  },\
  inputs: [\
    {\
      type: "minecraft:single_option",\
      key: "align",\
      width: 200,\
      label: "Block alignment",\
      label_visible: false,\
      options: [\
        {\
          id: "1",\
          display: "Position: Don't Change",\
          initial: true\
        },\
        {\
          id: "2",\
          display: "Position: Align to Center of Block"\
        },\
        {\
          id: "3",\
          display: "Position: Align to Corner of Block"\
        }\
      ]\
    },\
    {\
      type: "minecraft:number_range",\
      key: "yaw",\
      width: 400,\
      label: "Yaw",\
      start: 0,\
      end: 360,\
      step: 1,\
      initial: $(yaw)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "pitch",\
      width: 400,\
      label: "Pitch",\
      start: -90,\
      end: 90,\
      step: 1,\
      initial: $(pitch)\
    }\
  ],\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger set_pos_and_rot set 0"\
    }\
  },\
  actions: [\
    {\
      label: {\
        translate: "gui.proceed"\
      },\
      action: {\
        type: "dynamic/run_command",\
        template: "trigger set_pos_and_rot set $(macro)"\
      }\
    }\
  ]\
}