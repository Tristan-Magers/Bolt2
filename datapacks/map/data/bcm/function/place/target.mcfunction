tag @s remove init

# don't place if inside a block
setblock ~ ~ ~ target keep
execute unless block ~ ~ ~ target run kill @s
execute unless block ~ ~ ~ target as @p[scores={place_object_egg=1..}] run return run function bcm:fail/actionbar {input:'"Could not set the block"'}

playsound block.grass.place block @a[distance=..16] ~ ~ ~ 1 0.8