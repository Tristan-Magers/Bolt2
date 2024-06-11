#
execute align xyz positioned ~0.5 ~0.5 ~0.5 run fill ~ ~ ~ ~ ~ ~ air replace gravel
execute align xyz run fill ~ ~ ~ ~ ~ ~ deepslate_copper_ore replace air
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["crate"],response:1b,width:1.2f,height:1.2f}
execute align xyz run summon shulker ~0.5 ~ ~0.5 {Team:"gray",Invulnerable:1b,Glowing:1b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:resistance",amplifier:10b,duration:999999,ShowParticles:0b},{id:"minecraft:invisibility",amplifier:10b,duration:19999980,ShowParticles:0b},{id:"minecraft:glowing",amplifier:10b,duration:999999,ShowParticles:0b}]}

kill @s[tag=crate_marker]