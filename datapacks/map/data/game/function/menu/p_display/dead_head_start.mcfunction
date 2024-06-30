#
execute as @a[tag=me_player] at @s run playsound minecraft:entity.skeleton.step master @s ~ ~ ~ 1 1.3
execute as @a[tag=me_player] at @s run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1.2

#
scoreboard players set @s dead_head 6

#
item replace entity @s[tag=off] weapon.offhand with minecraft:skeleton_skull
item replace entity @s[tag=!off] weapon.mainhand with minecraft:skeleton_skull