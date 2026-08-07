execute if data block ~ ~ ~ Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
execute if data block ~ ~ ~ Items[{Slot:1b}] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.1
execute if data block ~ ~ ~ Items[{Slot:2b}] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.2
data remove block ~ ~ ~ Items
stopsound @s block block.shelf.place_item
return 1