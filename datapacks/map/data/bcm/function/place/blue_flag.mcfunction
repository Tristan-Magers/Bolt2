# if same spot, don't change
execute if entity @e[type=#bcm:place,tag=place,tag=blue_flag,tag=!init,distance=..0.1] run return run kill @s

# don't place if inside a block
setblock ~ ~ ~ blue_banner keep
execute unless block ~ ~ ~ blue_banner run kill @s
execute unless block ~ ~ ~ blue_banner as @p[scores={place_object_egg=1..}] run return run function bcm:fail/actionbar {input:'"Could not set the block"'}

playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 0.8

# visibility state
execute store result entity @s view_range float 1 run scoreboard players get display.flags set_render_box

# delete old flag
execute at @e[type=#bcm:place,tag=place,tag=blue_flag,tag=!init] run setblock ~ ~ ~ air strict
execute as @e[type=#bcm:place,tag=place,tag=blue_flag,tag=!init] at @s run function bcm:place/delete
forceload add ~ ~
tag @s remove init
return 1