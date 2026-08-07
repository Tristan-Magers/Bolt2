advancement revoke @s only game:coin

execute unless score @s coin_use matches 1.. unless score @s coin_cooldown matches 1.. run playsound minecraft:block.vault.eject_item master @s[tag=!lobby] ~ ~ ~ 1 0.8
execute unless score @s coin_use matches 1.. unless score @s coin_cooldown matches 1.. run playsound minecraft:ui.toast.out master @s[tag=!lobby] ~ ~ ~ 1 2
execute unless score @s coin_use matches 1.. unless score @s coin_cooldown matches 1.. run playsound minecraft:block.barrel.close master @s[tag=!lobby] ~ ~ ~ 1 0
execute unless score @s coin_use matches 1.. unless score @s coin_cooldown matches 1.. run scoreboard players set @s[tag=!lobby] coin_use 14

tag @s add using_coin