tag @s[x=233.0,y=-80,z=-266.9,dx=30,dy=60,dz=-25] add range_arrow

execute if entity @s[nbt={inBlockState:{Name:"minecraft:gravel"}}] on origin run tag @s add arrow_hit
# REWORK
execute if entity @s[tag=range_arrow,nbt={inBlockState:{Name:"minecraft:target"}}] run function game:arrow/target_hit_range
execute if entity @s[tag=!range_arrow,nbt={inBlockState:{Name:"minecraft:target"}}] if score .mode .data = .7 .num run function game:arrow/target_hit
#execute if entity @s[tag=!range_arrow,nbt={inBlockState:{Name:"minecraft:target"}}] if score .map .data = .10 .num if score .mode .data = .7 .num run function game:arrow/target_hit
execute if entity @s[tag=!range_arrow,nbt={inBlockState:{Name:"minecraft:emerald_block"}}] run function game:arrow/target_hit_emer

execute at @s if block ~0.2 ~ ~ gravel run tag @s add gravel
execute at @s if block ~-0.2 ~ ~ gravel run tag @s add gravel
execute at @s if block ~ ~0.2 ~ gravel run tag @s add gravel
execute at @s if block ~ ~-0.2 ~ gravel run tag @s add gravel
execute at @s if block ~ ~ ~0.2 gravel run tag @s add gravel
execute at @s if block ~ ~ ~-0.2 gravel run tag @s add gravel

fill ~0.2 ~ ~ ~-0.2 ~ ~ minecraft:air replace gravel
fill ~ ~0.2 ~ ~ ~-0.2 ~ minecraft:air replace gravel
fill ~ ~ ~0.2 ~ ~ ~-0.2 minecraft:air replace gravel

execute at @s[tag=!gravel] at @s run fill ~0.2 ~0.2 ~0.2 ~-0.2 ~-0.2 ~-0.2 minecraft:air replace gravel

execute at @s[tag=gravel] at @s run playsound minecraft:block.gravel.break master @a

function game:arrow/particle

kill @s