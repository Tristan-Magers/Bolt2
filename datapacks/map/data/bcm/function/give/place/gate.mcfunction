give @s panda_spawn_egg[\
  item_name="Create/Edit Gates",\
  item_model=oak_fence_gate,\
  custom_data={\
    bcm_gate:true\
  },\
  lore=[\
    "Some assembly required",\
    "Use your own blocks & pressure plates",\
    "Place in bottom right corner"\
  ],\
  entity_data={\
    id:block_display,\
    Tags:[map_editor,gate,init],\
    view_range:0f,\
    block_state:{\
      Name:"white_stained_glass"\
    },\
    transformation:{\
      scale:[3.01f,4.01f,1.01f],\
      translation:[-0.505f,-0.005f,-0.505f],\
      left_rotation:[0f,0f,0f,1f],\
      right_rotation:[0f,0f,0f,1f]\
    },\
    data:{\
      gate:{\
        width:3,\
        height:4,\
        time:6\
      }\
    }\
  }\
] 1