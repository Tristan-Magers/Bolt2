scoreboard objectives add set_render_box trigger
execute unless score display.save set_render_box matches 0 run scoreboard players set display.save set_render_box 1
execute unless score display.spawn set_render_box matches 0 run scoreboard players set display.spawn set_render_box 1
execute unless score display.spawnpoint set_render_box matches 0 run scoreboard players set display.spawnpoint set_render_box 1
execute unless score display.flags set_render_box matches 0 run scoreboard players set display.flags set_render_box 1
execute unless score display.gens set_render_box matches 0 run scoreboard players set display.gens set_render_box 1
execute unless score display.wall_height set_render_box matches 0 run scoreboard players set display.wall_height set_render_box 1
execute unless score display.camera set_render_box matches 0 run scoreboard players set display.camera set_render_box 1
scoreboard objectives add set_pos_and_rot trigger
scoreboard objectives add set_item_generator trigger
scoreboard objectives add existing_map_response trigger
scoreboard objectives add master_menu trigger
scoreboard objectives add export_map trigger
scoreboard objectives add targets_and_crates trigger
scoreboard objectives add map_settings trigger
scoreboard objectives add set_map_invuln trigger
scoreboard objectives add save_map trigger
scoreboard objectives add set_gate trigger

# save rate is very constant -> very accurate save ETA
# @ 5k blocks: 12500 blocks/s
# @ 500k blocks: 12000 blocks/s
# @ 6M blocks: 11300 blocks/s
scoreboard players set .save_blocks/s .calc 11000

# load rate changes wildly -> inaccurate load ETA
# @ 47k entries (500k): 11000 entries/s
# @ 190k entries (6M): 4000 entries/s
scoreboard players set .load_entries/s .calc 4000

scoreboard objectives add select_area dummy
execute unless score .enabled select_area matches 0..1 run scoreboard players set .enabled select_area 1
scoreboard objectives add place_object dummy
scoreboard objectives add place_object_egg minecraft.used:minecraft.panda_spawn_egg

scoreboard objectives add bcm_generator_time dummy
scoreboard objectives add bcm_generator_warmup dummy
scoreboard objectives add bcm_crate_spawn_chance dummy
scoreboard objectives add bcm_gate_id dummy

# item map load point
execute unless score #item_map_load_z .calc matches -2147483648..2147483647 run tellraw @a {text:"ERROR: Score #item_map_load_z .calc is UNSET - Adding item maps WILL NOT WORK PROPERLY!!!",color:"red"}

# keep it simple - forceload the whole map editor area all the time
function bcm:editor/forceload