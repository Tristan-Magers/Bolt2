#
scoreboard players add @s t1 1

#
tag @e remove me
tag @s add me

#
execute as @s[scores={t1=1}] store result score @s x run data get entity @s Pos[0] 1
execute as @s[scores={t1=1}] store result score @s y run data get entity @s Pos[1] 1
execute as @s[scores={t1=1}] store result score @s z run data get entity @s Pos[2] 1

execute as @s[scores={t1=1}] store result score @s x_pos run data get entity @s Pos[0] 100
execute as @s[scores={t1=1}] store result score @s y_pos run data get entity @s Pos[1] 100
execute as @s[scores={t1=1}] store result score @s z_pos run data get entity @s Pos[2] 100

data merge entity @s[scores={t1=1..7}] {LeftOwner:1b}

tag @a remove enemy_player
execute as @s[tag=red,scores={t1=2..10}] run tag @a[team=blue,gamemode=adventure,scores={invul=..0,respawn=..0}] add enemy_player
execute as @s[tag=blue,scores={t1=2..10}] run tag @a[team=red,gamemode=adventure,scores={invul=..0,respawn=..0}] add enemy_player

#
execute store result score @s x_t run data get entity @s Pos[0] 100
execute store result score @s y_t run data get entity @s Pos[1] 100
execute store result score @s z_t run data get entity @s Pos[2] 100

# use deltas to find distance traveled, which will decide if more checks are needed
scoreboard players operation @s mot_x = @s x_t
scoreboard players operation @s mot_y = @s y_t
scoreboard players operation @s mot_z = @s z_t

scoreboard players operation @s mot_x -= @s x_pos
scoreboard players operation @s mot_y -= @s y_pos
scoreboard players operation @s mot_z -= @s z_pos

scoreboard players operation @s mot_x *= @s mot_x
scoreboard players operation @s mot_y *= @s mot_y
scoreboard players operation @s mot_z *= @s mot_z

scoreboard players set @s distance 0
scoreboard players operation @s distance += @s mot_x
scoreboard players operation @s distance += @s mot_y
scoreboard players operation @s distance += @s mot_z

# redo deltas to get in between positions
scoreboard players operation @s mot_x = @s x_t
scoreboard players operation @s mot_y = @s y_t
scoreboard players operation @s mot_z = @s z_t

scoreboard players operation @s mot_x -= @s x_pos
scoreboard players operation @s mot_y -= @s y_pos
scoreboard players operation @s mot_z -= @s z_pos

scoreboard players operation .pos_x .calc = @s x_pos
scoreboard players operation .pos_y .calc = @s y_pos
scoreboard players operation .pos_z .calc = @s z_pos

scoreboard players operation .mot_x .calc = @s mot_x
scoreboard players operation .mot_y .calc = @s mot_y
scoreboard players operation .mot_z .calc = @s mot_z

scoreboard players operation .mot_x .calc /= .4 .num
scoreboard players operation .mot_y .calc /= .4 .num
scoreboard players operation .mot_z .calc /= .4 .num

scoreboard players operation .pos_x .calc += .mot_x .calc
scoreboard players operation .pos_y .calc += .mot_y .calc
scoreboard players operation .pos_z .calc += .mot_z .calc

execute store result storage minecraft:macro input.pos_x float 0.01 run scoreboard players get .pos_x .calc
execute store result storage minecraft:macro input.pos_y float 0.01 run scoreboard players get .pos_y .calc
execute store result storage minecraft:macro input.pos_z float 0.01 run scoreboard players get .pos_z .calc

execute if entity @s[scores={distance=12000..},tag=!kill] run function game:items/arrow/macro_hitbox with storage minecraft:macro input

scoreboard players operation .pos_x .calc += .mot_x .calc
scoreboard players operation .pos_y .calc += .mot_y .calc
scoreboard players operation .pos_z .calc += .mot_z .calc

execute store result storage minecraft:macro input.pos_x float 0.01 run scoreboard players get .pos_x .calc
execute store result storage minecraft:macro input.pos_y float 0.01 run scoreboard players get .pos_y .calc
execute store result storage minecraft:macro input.pos_z float 0.01 run scoreboard players get .pos_z .calc

execute if entity @s[scores={distance=7000..},tag=!kill] run function game:items/arrow/macro_hitbox with storage minecraft:macro input

scoreboard players operation .pos_x .calc += .mot_x .calc
scoreboard players operation .pos_y .calc += .mot_y .calc
scoreboard players operation .pos_z .calc += .mot_z .calc

execute store result storage minecraft:macro input.pos_x float 0.01 run scoreboard players get .pos_x .calc
execute store result storage minecraft:macro input.pos_y float 0.01 run scoreboard players get .pos_y .calc
execute store result storage minecraft:macro input.pos_z float 0.01 run scoreboard players get .pos_z .calc

execute if entity @s[scores={distance=12000..},tag=!kill] run function game:items/arrow/macro_hitbox with storage minecraft:macro input

#tellraw @p {"score":{"name":"@s","objective":"distance"}}

# run arrow hitbox on self
function game:id/player

execute as @s[tag=!kill] at @s run function game:items/arrow/hitbox

execute as @s[tag=!shot,tag=!kill] at @s run playsound custom:shoot_arrow master @a[tag=!id_share]
execute as @s[tag=!shot,tag=!kill] at @s run playsound custom:shoot_arrow master @a[tag=!id_share]

execute as @s[tag=!shot] as @a[tag=id_share] at @s positioned ^ ^ ^1 positioned ~ ~1.6 ~ run function game:items/arrow/fire_sound

kill @s[tag=kill]

#
scoreboard players operation @s x_pos = @s x_t
scoreboard players operation @s y_pos = @s y_t
scoreboard players operation @s z_pos = @s z_t

tag @s remove me