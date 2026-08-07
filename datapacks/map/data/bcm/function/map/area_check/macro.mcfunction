# in area
$execute positioned $(start) positioned ~-1.0 ~-0.5 ~-1.0 if entity @s[$(area)] run return 1

# not in area
data modify storage bcm error set value {type:"",pos:""}
execute if entity @s[tag=red_flag] run data modify storage bcm error.type set value "Red flag"
execute if entity @s[tag=blue_flag] run data modify storage bcm error.type set value "Blue flag"
execute if entity @s[tag=red_spawnpoint] run data modify storage bcm error.type set value "Red spawn point"
execute if entity @s[tag=blue_spawnpoint] run data modify storage bcm error.type set value "Blue spawn point"
execute if entity @s[tag=red_spawn] run data modify storage bcm error.type set value "All or part of red spawn area"
execute if entity @s[tag=blue_spawn] run data modify storage bcm error.type set value "All or part of blue spawn area"
execute if entity @s[tag=intro_camera] run data modify storage bcm error.type set value "Intro camera"
execute if entity @s[tag=generator] run data modify storage bcm error.type set value "Item generator"
execute if entity @s[tag=pos1] run data modify storage bcm error.pos set value "(pos 1) "
execute if entity @s[tag=pos2] run data modify storage bcm error.pos set value "(pos 2) "
#execute as @p run return run function bcm:fail/tellraw {input:'["Failed to save map: ",{nbt:"error.type",storage:"bcm"}," ",{nbt:"error.pos",storage:"bcm"},"is outside the save area"]'}
data modify storage bcm error.text set value [{nbt:"error.type",storage:"bcm",interpret:true}," ",{nbt:"error.pos",storage:"bcm",interpret:true}]
return fail