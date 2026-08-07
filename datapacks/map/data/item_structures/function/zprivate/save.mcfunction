kill @e[tag=saver]
summon marker ~ ~ ~ {Tags:["saver","org_x"]}
summon marker ~ ~ ~ {Tags:["saver","org_y"]}
summon marker ~ ~ ~ {Tags:["saver","org_z"]}

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from entity @s Pos[0]
data modify storage item_structures forceload.z set from entity @s Pos[2]
execute at @n[tag=end_point] run function item_structures:zprivate/forceload with storage item_structures forceload

execute as @e[tag=saver,tag=org_x,limit=1,type=marker] at @s run function item_structures:zprivate/save/start

function item_structures:zprivate/progress_estimate
bossbar set progress name {text:"Save Progress",color:"green"}