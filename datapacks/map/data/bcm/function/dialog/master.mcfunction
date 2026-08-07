scoreboard players enable @s master_menu
return run dialog show @s {\
  type: "minecraft:multi_action",\
  title: "Map Editor Menu",\
  exit_action: {\
    label: {\
      translate: "gui.cancel"\
    },\
    action: {\
      type: "minecraft:run_command",\
      command: "trigger master_menu set 0"\
    }\
  },\
  columns: 1,\
  actions: [\
    {\
      label: "Display Settings...",\
      tooltip: "Toggle visibility for various map editor objects here",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 1"\
      }\
    },\
    {\
      label: "Adjust Position & Rotation...",\
      tooltip: "Makes it easier to set spawn points and the intro camera precisely",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 2"\
      }\
    },\
    {\
      label: "Targets & Crates...",\
      tooltip: "Don't worry about this if you're not done building",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 3"\
      }\
    },\
    {\
      label: "Map Settings...",\
      tooltip: "Change disabled items, thumbnail color, and map size rating here",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 4"\
      }\
    },\
    {\
      label: "Save Map...",\
      tooltip: "This might take a while!\n\nCreates an item with your map's data stored on it, which you can save permanently in creative mode\n\nDoes not affect targets & crates",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 5"\
      }\
    },\
    {\
      label: "Return to Lobby",\
      action: {\
        type: "minecraft:run_command",\
        command: "trigger master_menu set 6"\
      }\
    }\
  ]\
}