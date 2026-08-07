$return run dialog show @s {\
  type: "minecraft:notice",\
  title: "Display Settings",\
  inputs: [\
    {\
      type: "minecraft:boolean",\
      key: "save",\
      label: "Show Save Area",\
      initial: $(save),\
      on_true: "2",\
      on_false: "1"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "wall_height",\
      label: "Show Max Wall Height",\
      initial: $(wall_height),\
      on_true: "1",\
      on_false: "0"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "spawns",\
      label: "Show Spawn Areas",\
      initial: $(spawns),\
      on_true: "1",\
      on_false: "0"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "spawnpoints",\
      label: "Show Spawn Points",\
      initial: $(spawnpoints),\
      on_true: "1",\
      on_false: "0"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "camera",\
      label: "Show Intro Camera",\
      initial: $(camera),\
      on_true: "1",\
      on_false: "0"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "flags",\
      label: "Glow Flags",\
      initial: $(flags),\
      on_true: "1",\
      on_false: "0"\
    },\
    {\
      type: "minecraft:boolean",\
      key: "gens",\
      label: "Glow Item Generators",\
      initial: $(gens),\
      on_true: "1",\
      on_false: "0"\
    }\
  ],\
  action: {\
    label: {\
      translate: "gui.done"\
    },\
    width: 200,\
    action: {\
      type: "dynamic/run_command",\
      template: "trigger set_render_box set $(macro)"\
    }\
  }\
}