# if same spot, don't change
execute if entity @e[type=block_display,tag=place,tag=generator,tag=!init,distance=..0.1] run return run kill @s

# don't place if inside a block
setblock ~ ~ ~ cauldron keep
execute unless block ~ ~ ~ cauldron run kill @s
execute unless block ~ ~ ~ cauldron as @p[scores={place_object_egg=1..}] run return run function bcm:fail/actionbar {input:'"Could not set the cauldron block"'}

# times
scoreboard players set @s bcm_generator_time 45
scoreboard players set @s bcm_generator_warmup 5

# rotation & sign
execute store result score .r .calc run data get entity @p[scores={place_object_egg=1..}] Rotation[0] 1
execute if score .r .calc matches -45..44 positioned ~ ~ ~-1 store success score .sign .calc run function bcm:place/generator_sign {facing:"north",rotation:"[-180f,0f]"}
execute if score .r .calc matches 45..134 positioned ~1 ~ ~ store success score .sign .calc run function bcm:place/generator_sign {facing:"east",rotation:"[-90f,0f]"}
execute if score .r .calc matches 135..179 positioned ~ ~ ~1 store success score .sign .calc run function bcm:place/generator_sign {facing:"south",rotation:"[0f,0f]"}
execute if score .r .calc matches -180..-136 positioned ~ ~ ~1 store success score .sign .calc run function bcm:place/generator_sign {facing:"south",rotation:"[0f,0f]"}
execute if score .r .calc matches -135..-46 positioned ~-1 ~ ~ store success score .sign .calc run function bcm:place/generator_sign {facing:"west",rotation:"[90f,0f]"}
#execute unless score .r .calc matches -180..179 as @p[scores={place_object_egg=1..}] run function bcm:fail/tellraw {input:'["unexpected yaw: ",{score:{name:".r",objective:".calc"}}]'}
execute if score .sign .calc matches 0 run setblock ~ ~ ~ air strict
execute if score .sign .calc matches 0 run return fail

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 0.8

# visibility state
execute store result entity @s view_range float 1 run scoreboard players get display.gens set_render_box

# cleanup
tag @s remove init
return 1