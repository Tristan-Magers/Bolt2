#
#execute align xyz run fill ~ ~ ~ ~ ~ ~ minecraft:respawn_anchor replace air
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.2f,height:1.2f,Tags:["survivor_generator"],response:1b}
execute align xyz run summon shulker ~0.5 ~ ~0.5 {CustomNameVisible:1b,CustomName:{"text":"Generator"},Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:resistance",amplifier:10b,duration:999999},{id:"minecraft:invisibility",amplifier:10b,duration:19999980,ShowParticles:0b},{id:"minecraft:glowing",amplifier:10b,duration:999999}]}
execute align xyz run summon minecraft:armor_stand ~0.5 ~1.1 ~0.5 {CustomNameVisible:1b,CustomName:{"text":"Generator"},Marker:1,Invisible:1}

execute align xyz run summon block_display ~-0.25 ~ ~-0.25 {Tags:["survivor_generator_dis"],Glowing:1b,block_state:{Name:"minecraft:nether_quartz_ore"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}

scoreboard players set @e[tag=survivor_generator] scrap_count 0