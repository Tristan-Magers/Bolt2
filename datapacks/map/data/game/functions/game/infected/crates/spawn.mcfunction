#
execute align xyz run fill ~ ~ ~ ~ ~ ~ deepslate_copper_ore replace air
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["crate"],response:1b,width:1.2f,height:1.2f}
execute align xyz run summon shulker ~0.5 ~ ~0.5 {Team:"gray",Invulnerable:1b,Glowing:1b,NoAI:1b,AttachFace:0b,active_effects:[{Id:11,Amplifier:10b,Duration:999999},{Id:14,Amplifier:10b,Duration:19999980,ShowParticles:0b},{Id:24,Amplifier:10b,Duration:999999}]}

kill @s[tag=crate_marker]