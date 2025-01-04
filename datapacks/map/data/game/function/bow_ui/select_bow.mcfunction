#
scoreboard players operation .store_bow_pace .calc = @s bow_texture_place
scoreboard players operation @s bow_texture_place = @s v_3

#
scoreboard players operation @s temp_bow_value = @s bow_texture_place
function game:bow_ui/get_bow_id
scoreboard players operation .store_bow_id .calc = @s bow_texture
scoreboard players operation @s bow_texture = @s temp_bow_id

#
tag @s remove bow_locked
execute store result storage minecraft:macro input.texture int 1 run scoreboard players get @s bow_texture
function game:bow_ui/macro_check_lock with storage minecraft:macro input
tag @s[tag=unlocked_all] remove bow_locked

execute as @s[tag=bow_locked] run scoreboard players operation @s bow_texture = .store_bow_id .calc
execute as @s[tag=bow_locked] run scoreboard players operation @s bow_texture_place = .store_bow_pace .calc

#
execute at @s[tag=!bow_locked] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 0.95
execute at @s[tag=!bow_locked] run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 0.4 1.15

execute at @s[tag=bow_locked] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.4 0.5
execute at @s[tag=bow_locked] run playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 0.3 0.6
execute at @s[tag=bow_locked] run playsound minecraft:block.chain.hit master @s ~ ~ ~ 0.4 0.5

#bow correct
clear @s bow
execute if score .mode .data = .6 .num run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,tag=playing] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow[unbreakable={show_in_tooltip:false}] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1

#
function game:bow_ui/make_page

#
function game:bow/dynamic_bow_data