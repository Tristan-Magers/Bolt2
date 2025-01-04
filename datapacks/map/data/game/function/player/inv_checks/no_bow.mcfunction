clear @s bow
clear @s bone
clear @s minecraft:black_stained_glass_pane
tag @s add lobby_inv_correct
execute if score .mode .data = .6 .num run item replace entity @s[tag=playing] hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
item replace entity @s[scores={bow_texture=78}] hotbar.0 with bow[unbreakable={show_in_tooltip:false}] 1
item replace entity @s hotbar.0 with bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
