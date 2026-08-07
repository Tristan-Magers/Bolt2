give @s stick[\
  item_model="minecraft:red_bed",\
  item_name="Set Red Spawn Point",\
  use_cooldown={seconds:1},\
  consumable={\
    sound:{sound_id:""},\
    consume_seconds:0,\
    animation:"none",\
    has_consume_particles:0b,\
    on_consume_effects:[{\
      type:"apply_effects",\
      effects:[{id:"minecraft:luck",amplifier:31b}]\
    }]\
  }\
]