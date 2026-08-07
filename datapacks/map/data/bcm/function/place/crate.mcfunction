tag @s remove init

# don't place if inside a block
setblock ~ ~ ~ deepslate_copper_ore keep
execute unless block ~ ~ ~ deepslate_copper_ore run kill @s
execute unless block ~ ~ ~ deepslate_copper_ore as @p[scores={place_object_egg=1..}] run return run function bcm:fail/actionbar {input:'"Could not set the block"'}

playsound block.wood.place block @a[distance=..16] ~ ~ ~ 1 0.8

# spawn_chance
scoreboard players set @s bcm_crate_spawn_chance 1
function bcm:place/crate_text