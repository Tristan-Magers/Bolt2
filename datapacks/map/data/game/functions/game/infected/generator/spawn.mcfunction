#
execute align xyz run fill ~ ~ ~ ~ ~ ~ minecraft:respawn_anchor replace air
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.2f,height:1.2f,Tags:["survivor_generator"],response:1b}
execute align xyz run summon shulker ~0.5 ~ ~0.5 {CustomNameVisible:1b,CustomName:'{"text":"Generator"}',Invulnerable:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:11,Amplifier:10b,Duration:999999},{Id:14,Amplifier:10b,Duration:19999980,ShowParticles:0b},{Id:24,Amplifier:10b,Duration:999999}]}
execute align xyz run summon minecraft:armor_stand ~0.5 ~1.1 ~0.5 {CustomNameVisible:1b,CustomName:'{"text":"Generator"}',Marker:1,Invisible:1}

scoreboard players set @e[tag=survivor_generator] scrap_count 0