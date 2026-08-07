$return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Spawn Invulnerability Times",\
  body: {\
    type: "minecraft:plain_message",\
    contents: [\
      "The time you're invulnerable for ",\
      {\
        text: "after",\
        italic: true,\
      },\
      " leaving your spawn area.\n\n20 ticks = 1 second\n"\
    ]\
  },\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: "ctf",\
      width: 400,\
      label: "CTF & TMI",\
      label_format: "%s: %s ticks",\
      start: 0,\
      end: 200,\
      step: 1,\
      initial: $(initial_ctf)\
    },\
    {\
      type: "minecraft:number_range",\
      key: "infection",\
      width: 400,\
      label: "Infection",\
      label_format: "%s: %s ticks",\
      start: 0,\
      end: 200,\
      step: 1,\
      initial: $(initial_infection)\
    }\
  ],\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "run_command",\
      command: "trigger set_map_invuln set 0"\
    }\
  },\
  actions: [\
    {\
      label: {\
        translate: "gui.proceed"\
      },\
      action: {\
        type: "dynamic/run_command",\
        template: "trigger set_map_invuln set $(macro)"\
      }\
    },\
    {\
      label: {\
        translate: "dataPack.validation.reset"\
      },\
      action: {\
        type: "run_command",\
        command: "trigger set_map_invuln set -1"\
      }\
    }\
  ]\
}