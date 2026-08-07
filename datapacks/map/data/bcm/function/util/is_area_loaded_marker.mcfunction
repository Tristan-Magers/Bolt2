# positioned at NW corner of area
# .x .calc = x length
# .z .calc = z length
# @s = anonymous marker
kill @s

# start from NW corner of chunk
#tellraw @a ["before: ",{nbt:"Pos[0]",entity:"@s",plain:true}," ",{nbt:"Pos[2]",entity:"@s",plain:true}," to ~",{score:{name:".x",objective:".calc"}}," ~",{score:{name:".z",objective:".calc"}}]
execute store result score .dx .calc run data get entity @s Pos[0]
execute store result score .dz .calc run data get entity @s Pos[2]
execute store result score .x1 .calc store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result score .z1 .calc store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
scoreboard players operation .x1 .calc *= .16 .num
scoreboard players operation .z1 .calc *= .16 .num
scoreboard players operation .dx .calc -= .x1 .calc
scoreboard players operation .dz .calc -= .z1 .calc
scoreboard players operation .dx .calc += .x .calc
scoreboard players operation .dz .calc += .z .calc
#tellraw @a ["after: ",{score:{name:".x1",objective:".calc"}}," ",{score:{name:".z1",objective:".calc"}}," to ~",{score:{name:".dx",objective:".calc"}}," ~",{score:{name:".dz",objective:".calc"}}]

scoreboard players set #x .calc 0
execute at @s run return run function bcm:util/is_area_loaded_x