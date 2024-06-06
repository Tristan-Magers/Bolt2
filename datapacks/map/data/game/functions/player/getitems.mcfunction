clear @s

execute if score .mode .data = .6 .num run give @s[scores={bow_texture=78}] bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1
give @s[scores={bow_texture=78},nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow[unbreakable={show_in_tooltip:false}] 1
give @s[nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:power":255},show_in_tooltip:false}] 1

#item replace entity @s[team=red] armor.chest with leather_chestplate[display:{color:16711680},unbreakable={show_in_tooltip:false}]
#item replace entity @s[team=blue] armor.chest with leather_chestplate{display:{color:22015},unbreakable={show_in_tooltip:false}}