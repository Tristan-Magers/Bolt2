# say running check_owner.mcfunction

execute store result score .targetUUID_0 .num run data get entity @s UUID[0]
execute store result score .targetUUID_1 .num run data get entity @s UUID[1]
execute store result score .targetUUID_2 .num run data get entity @s UUID[2]
execute store result score .targetUUID_3 .num run data get entity @s UUID[3]

scoreboard players operation .targetUUID_0 .num -= .arrowUUID_0 .num
scoreboard players operation .targetUUID_1 .num -= .arrowUUID_1 .num
scoreboard players operation .targetUUID_2 .num -= .arrowUUID_2 .num
scoreboard players operation .targetUUID_3 .num -= .arrowUUID_3 .num

scoreboard players operation .targetUUID_0 .num += .targetUUID_1 .num
scoreboard players operation .targetUUID_0 .num += .targetUUID_2 .num
scoreboard players operation .targetUUID_0 .num += .targetUUID_3 .num

execute if score .targetUUID_0 .num matches 0 run tag @s add shieldTarget