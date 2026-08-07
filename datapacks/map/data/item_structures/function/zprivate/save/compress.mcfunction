# save.blocks[-1] = 32768*same_count + block_id
scoreboard players operation #same_count commands *= .32768 .num
execute store result score #block_id commands run data get storage item_structures save.blocks[-1] 1
execute store result storage item_structures save.blocks[-1] int 1 run scoreboard players operation #same_count commands += #block_id commands

scoreboard players set #same_count commands 0