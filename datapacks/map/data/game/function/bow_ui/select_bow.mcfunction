#
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 0.95
execute at @s run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 0.4 1.15

#
scoreboard players operation @s bow_texture_place = @s v_3

#
scoreboard players operation @s temp_bow_value = @s bow_texture_place
function game:bow_ui/get_bow_id
scoreboard players operation @s bow_texture = @s temp_bow_id

#bow correct
clear @s bow
execute if score .mode .data = .6 .num run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,tag=playing] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow[unbreakable={show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1

#
function game:bow_ui/make_page

#
function game:bow/dynamic_bow_data