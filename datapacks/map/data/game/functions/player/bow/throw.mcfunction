scoreboard players add @s[tag=!playing] bow_texture_place 1

scoreboard players set @s[scores={bow_texture_place=78..}] bow_texture_place 0

scoreboard players operation @s temp_bow_value = @s bow_texture_place
function game:bow_ui/get_bow_id
scoreboard players operation @s bow_texture = @s temp_bow_id

scoreboard players set @s bow_throw 0

#bow correct
clear @s[nbt=!{Inventory:[{id:"minecraft:bow",Slot:0b}]}] bow
execute if score .mode .data = .6 .num run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,tag=playing] hotbar.0 with bow{unbreakable={show_in_tooltip:false},Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative,scores={bow_texture=78}] hotbar.0 with bow{unbreakable={show_in_tooltip:false},HideFlags:1} 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bow"}]},gamemode=!creative] hotbar.0 with bow{unbreakable={show_in_tooltip:false},Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1

#
function game:bow_ui/make_page