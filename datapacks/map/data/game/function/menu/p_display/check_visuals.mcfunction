### Just don't even ask man. I'm as dumb as a rock -CN

#
execute unless entity @a[scores={p_display_num=5}] run scoreboard players remove @a[scores={p_display_num=6}] p_display_num 1
execute unless entity @a[scores={p_display_num=4}] run scoreboard players remove @a[scores={p_display_num=5..6}] p_display_num 1
execute unless entity @a[scores={p_display_num=3}] run scoreboard players remove @a[scores={p_display_num=4..6}] p_display_num 1
execute unless entity @a[scores={p_display_num=2}] run scoreboard players remove @a[scores={p_display_num=3..6}] p_display_num 1
execute unless entity @a[scores={p_display_num=1}] run scoreboard players remove @a[scores={p_display_num=2..6}] p_display_num 1

execute unless entity @a[scores={p_display_num=11}] run scoreboard players remove @a[scores={p_display_num=12}] p_display_num 1
execute unless entity @a[scores={p_display_num=10}] run scoreboard players remove @a[scores={p_display_num=11..12}] p_display_num 1
execute unless entity @a[scores={p_display_num=9}] run scoreboard players remove @a[scores={p_display_num=10..12}] p_display_num 1
execute unless entity @a[scores={p_display_num=8}] run scoreboard players remove @a[scores={p_display_num=9..12}] p_display_num 1
execute unless entity @a[scores={p_display_num=7}] run scoreboard players remove @a[scores={p_display_num=8..12}] p_display_num 1

#
execute as @e[type=minecraft:giant,scores={p_display_num=1}] unless entity @a[scores={p_display_num=1}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=2}] unless entity @a[scores={p_display_num=2}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=3}] unless entity @a[scores={p_display_num=3}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=4}] unless entity @a[scores={p_display_num=4}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=5}] unless entity @a[scores={p_display_num=5}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=6}] unless entity @a[scores={p_display_num=6}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=7}] unless entity @a[scores={p_display_num=7}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=8}] unless entity @a[scores={p_display_num=8}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=9}] unless entity @a[scores={p_display_num=9}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=10}] unless entity @a[scores={p_display_num=10}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=11}] unless entity @a[scores={p_display_num=11}] run function game:menu/p_display/reset_player
execute as @e[type=minecraft:giant,scores={p_display_num=12}] unless entity @a[scores={p_display_num=12}] run function game:menu/p_display/reset_player

#
execute unless entity @a[scores={p_display_num=1}] run tag @e[type=minecraft:giant,tag=1] add kill
execute unless entity @a[scores={p_display_num=2}] run tag @e[type=minecraft:giant,tag=2] add kill
execute unless entity @a[scores={p_display_num=3}] run tag @e[type=minecraft:giant,tag=3] add kill
execute unless entity @a[scores={p_display_num=4}] run tag @e[type=minecraft:giant,tag=4] add kill
execute unless entity @a[scores={p_display_num=5}] run tag @e[type=minecraft:giant,tag=5] add kill
execute unless entity @a[scores={p_display_num=6}] run tag @e[type=minecraft:giant,tag=6] add kill
execute unless entity @a[scores={p_display_num=7}] run tag @e[type=minecraft:giant,tag=7] add kill
execute unless entity @a[scores={p_display_num=8}] run tag @e[type=minecraft:giant,tag=8] add kill
execute unless entity @a[scores={p_display_num=9}] run tag @e[type=minecraft:giant,tag=9] add kill
execute unless entity @a[scores={p_display_num=10}] run tag @e[type=minecraft:giant,tag=10] add kill
execute unless entity @a[scores={p_display_num=11}] run tag @e[type=minecraft:giant,tag=11] add kill
execute unless entity @a[scores={p_display_num=12}] run tag @e[type=minecraft:giant,tag=12] add kill

#
execute unless entity @e[type=giant,tag=1] as @a[scores={p_display_num=1}] run summon giant 259.929 -51.05 -249.5 {Tags:["new","1","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=2] as @a[scores={p_display_num=2}] run summon giant 256.929 -51.05 -252.5 {Tags:["new","2","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=3] as @a[scores={p_display_num=3}] run summon giant 259.929 -47.05 -249.5 {Tags:["new","3","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=4] as @a[scores={p_display_num=4}] run summon giant 256.929 -47.05 -252.5 {Tags:["new","4","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=5] as @a[scores={p_display_num=5}] run summon giant 259.929 -55.05 -249.5 {Tags:["new","5","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=6] as @a[scores={p_display_num=6}] run summon giant 256.929 -55.05 -252.5 {Tags:["new","6","main"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-135F,0F],HandItems:[{id:"minecraft:player_head",count:1},{}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}

execute unless entity @e[type=giant,tag=7] as @a[scores={p_display_num=7}] run summon giant 259.929 -51.05 -221.5 {Tags:["new","7","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=8] as @a[scores={p_display_num=8}] run summon giant 256.929 -51.05 -218.5 {Tags:["new","8","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=9] as @a[scores={p_display_num=9}] run summon giant 259.929 -47.05 -221.5 {Tags:["new","9","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=10] as @a[scores={p_display_num=10}] run summon giant 256.929 -47.05 -218.5 {Tags:["new","10","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=11] as @a[scores={p_display_num=11}] run summon giant 259.929 -55.05 -221.5 {Tags:["new","11","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}
execute unless entity @e[type=giant,tag=12] as @a[scores={p_display_num=12}] run summon giant 256.929 -55.05 -218.5 {Tags:["new","12","off"],NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Rotation:[-45F,0F],HandItems:[{},{id:"minecraft:player_head",count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:999999,ShowParticles:0b}]}

effect give @e[type=minecraft:giant] minecraft:invisibility infinite 1 true

#
execute if entity @e[type=giant,tag=new] run function game:menu/p_display/setup_giants