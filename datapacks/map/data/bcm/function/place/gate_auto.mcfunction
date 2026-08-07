# position
$function bcm:map/edit/tp_convert {pos:"$(pos)"}

# rotation
$rotate @s $(rotation) 0

# default data
data merge entity @s {\
  Tags:[map_editor,gate],\
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
}

# update gate
execute store result score @s bcm_gate_id run scoreboard players add .counter bcm_gate_id 1
data modify storage bcm tmp set from storage bcm map.tmp_gates[-1]
data remove storage bcm tmp.pos
data remove storage bcm tmp.rotation
function bcm:place/gate_update
data remove storage bcm tmp

data remove storage bcm map.tmp_gates[-1]
execute if data storage bcm map.tmp_gates[-1] summon block_display run function bcm:place/gate_auto with storage bcm map.tmp_gates[-1]