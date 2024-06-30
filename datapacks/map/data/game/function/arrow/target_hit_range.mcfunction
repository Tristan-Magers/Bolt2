fill ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 air replace minecraft:target
#particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force

#
function game:id/player

#execute as @a[tag=id_share] at @s run title @s actionbar {"text":"BLOCK HIT [+1]","color":"gray"}

execute as @a[tag=id_share] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.8 1