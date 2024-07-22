#

execute as @a[tag=me_player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.8 1.2
execute as @a[tag=me_player] at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 0.5 2
execute as @a[tag=me_player] at @s run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1.2

execute if score .map_screen .data = .0 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"RANDOM","color":"gray","bold":true},{"text":" | Size: "},{"text":"§k⬜⬛⬜","color":"dark_gray","bold":true}]
execute if score .map_screen .data = .1 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"TOWERS","color":"#8269B5","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
execute if score .map_screen .data = .2 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"COVE","color":"#43B5AD","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
execute if score .map_screen .data = .3 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"DIVIDE","color":"#63B560","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
execute if score .map_screen .data = .5 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"HEX","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
execute if score .map_screen .data = .12 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"GARDEN","color":"#ffe066","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
execute if score .map_screen .data = .6 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"VALLEY","color":"#CFAE91","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
execute if score .map_screen .data = .14 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"RIVER","color":"#ffbf80","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
execute if score .map_screen .data = .10 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"TINY TOWN","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬜⬜⬜","color":"#92d9e3","bold":true}]
execute if score .map_screen .data = .15 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"LIGHTHOUSE","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]