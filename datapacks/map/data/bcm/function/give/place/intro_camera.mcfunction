give @s player_head[\
  !equippable,\
  item_name="Set Intro Camera Point",\
  rarity=common,\
  profile={properties:[{value:"ewogICJ0aW1lc3RhbXAiIDogMTc1MTgzNzQ2MjAwNywKICAicHJvZmlsZUlkIiA6ICJkMzJiNzIwYjE5MTQ0MjA5YmY5YTg2NjJmMWJiN2IzMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfQ2FtIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM0NzgzYTkyZGI2ZjY1ZGM0NjhmYjA2ZDk4M2UxM2ZkNDJjZWYwMzFkMzIzODJiNmU0NjI0ZTQ5Y2FmNzFkZTIiCiAgICB9CiAgfQp9",name:"textures"}]},\
  lore=[\
    "Sets the angle that everyone",\
    "sees on the \"VS\" screen",\
    "when the game starts, and",\
    "where spectators enter from"\
  ],\
  use_cooldown={seconds:1},\
  consumable={\
    sound:{sound_id:""},\
    consume_seconds:0,\
    animation:"none",\
    has_consume_particles:0b,\
    on_consume_effects:[{\
      type:"apply_effects",\
      effects:[{id:"minecraft:luck",amplifier:33b}]\
    }]\
  }\
]