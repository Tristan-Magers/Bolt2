#
playsound minecraft:ui.stonecutter.select_recipe master @s ~ ~ ~ 0.5 1.1

scoreboard players set @s bow_throw 0

#
function game:player/bow/next_and_check

#bow correct
clear @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] bow
execute if score .mode .data = .6 .num run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,tag=playing] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow[unbreakable={show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1

#
tag @s add lobby_inv_correct

#
function game:bow_ui/make_page
