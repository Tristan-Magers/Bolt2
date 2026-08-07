summon block_display ~ ~ ~ {\
  Tags:["map_editor","place","generator","init"],\
  block_state:{\
    Name:"cauldron"\
  },\
  Glowing:1b,\
  Rotation:[0f,0f],\
  transformation:{\
    left_rotation:[0f,0f,0f,1f],\
    right_rotation:[0f,0f,0f,1f],\
    scale:[.99f,.99f,.99f],\
    translation:[-.495f,.005f,-.495f]\
  },\
  view_range:0f\
}
execute as @n[type=block_display,tag=init] at @s run function bcm:place/generator_auto with storage bcm map.tmp_generators[-1]
data remove storage bcm map.tmp_generators[-1]

execute if data storage bcm map.tmp_generators[] run function bcm:place/generator_auto_loop