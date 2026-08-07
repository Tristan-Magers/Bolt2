# this needs to be a separate function so we can get out of potentially unloaded chunks before losing access to this entity

# go to absolute pos, OK if unloaded
$tp @s $(pos)

# absolute -> relative
execute at @s run function bcm:util/tp with storage bcm abs_to_rel