execute if entity @s[nbt={inBlockState:{Name:"minecraft:target"}}] unless score .map .data = .10 .num run function game:arrow/target_hit
execute if entity @s[nbt={inBlockState:{Name:"minecraft:target"}}] if score .map .data = .10 .num if score .mode .data = .7 .num run function game:arrow/target_hit
execute if entity @s[nbt={inBlockState:{Name:"minecraft:emerald_block"}}] run function game:arrow/target_hit_emer

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