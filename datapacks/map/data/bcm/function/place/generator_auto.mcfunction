tag @s remove init

# position
$function bcm:map/edit/tp_convert {pos:"$(pos)"}

# times
$scoreboard players set @s bcm_generator_time $(generator_duration)
$scoreboard players set @s bcm_generator_warmup $(generator_warmup)

# rotation & sign
$scoreboard players set .r .calc $(rotation)
scoreboard players operation .r .calc /= .90 .num
scoreboard players operation .r .calc %= .4 .num
execute if score .r .calc matches 0 at @s positioned ~ ~ ~1 run function bcm:place/generator_sign {facing:"south",rotation:"[0f,0f]"}
execute if score .r .calc matches 1 at @s positioned ~-1 ~ ~ run function bcm:place/generator_sign {facing:"west",rotation:"[90f,0f]"}
execute if score .r .calc matches 2 at @s positioned ~ ~ ~-1 run function bcm:place/generator_sign {facing:"north",rotation:"[180f,0f]"}
execute if score .r .calc matches 3 at @s positioned ~1 ~ ~ run function bcm:place/generator_sign {facing:"east",rotation:"[-90f,0f]"}

# visibility state
execute store result entity @s view_range float 1 run scoreboard players get display.gens set_render_box

forceload add ~ ~