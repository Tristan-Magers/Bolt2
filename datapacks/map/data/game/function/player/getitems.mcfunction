clear @s

execute if score .mode .data = .6 .num run give @s[scores={bow_texture=78}] bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
execute unless items entity @s contents bow run give @s[scores={bow_texture=78}] bow[unbreakable={show_in_tooltip:false}] 1
execute unless items entity @s contents bow run give @s bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1

#item replace entity @s[team=red] armor.chest with leather_chestplate[dyed_color={rgb:16711680,show_in_tooltip:false},unbreakable={show_in_tooltip:false}]
#item replace entity @s[team=blue] armor.chest with leather_chestplate{dyed_color={rgb:22015,show_in_tooltip:false},unbreakable={show_in_tooltip:false}}