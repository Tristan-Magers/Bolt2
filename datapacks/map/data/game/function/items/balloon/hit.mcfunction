execute as @p[tag=attacker] run summon marker ~ ~ ~ {Tags:["dir_get","new"]}
execute as @p[tag=attacker] run tp @e[type=marker,limit=1,tag=dir_get,tag=new] @s

execute on passengers as @s[type=minecraft:interaction] run data remove entity @s attack

execute as @e[type=marker,limit=1,tag=dir_get,tag=new] at @s run function game:items/balloon/hit_dir

execute at @s store result entity @e[limit=1,tag=me] Motion[0] double 0.06 run scoreboard players get .x3 .calc
#execute at @s store result entity @e[limit=1,tag=me] Motion[1] double 0.01 run scoreboard players get .y3 .calc
execute at @s store result entity @e[limit=1,tag=me] Motion[2] double 0.06 run scoreboard players get .z3 .calc

kill @e[type=marker,limit=1,tag=dir_get,tag=new]

playsound minecraft:entity.player.attack.nodamage master @a[distance=..6] ~ ~ ~ 0.5 0.9
playsound minecraft:entity.player.attack.nodamage master @a[distance=..6] ~ ~ ~ 0.5 1.3
playsound minecraft:block.note_block.basedrum master @a[distance=..6] ~ ~ ~ 1 1.5