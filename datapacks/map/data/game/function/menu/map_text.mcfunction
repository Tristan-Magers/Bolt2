#

execute as @a[tag=me_player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.8 1.2
execute as @a[tag=me_player] at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 0.5 2
execute as @a[tag=me_player] at @s run playsound minecraft:item.book.put master @s ~ ~ ~ 1 1.2

#execute if score .map_screen .data = .0 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"RANDOM","color":"gray","bold":true},{"text":" | Size: "},{"text":"§k⬜⬛⬜","color":"dark_gray","bold":true}]
#execute if score .map_screen .data = .1 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"TOWERS","color":"#8269B5","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
#execute if score .map_screen .data = .2 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"COVE","color":"#43B5AD","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
#execute if score .map_screen .data = .3 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"DIVIDE","color":"#63B560","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
#execute if score .map_screen .data = .5 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"HEX","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
#execute if score .map_screen .data = .12 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"GARDEN","color":"#ffe066","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
#execute if score .map_screen .data = .6 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"VALLEY","color":"#CFAE91","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
#execute if score .map_screen .data = .14 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"RIVER","color":"#ffbf80","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]
#execute if score .map_screen .data = .10 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"TINY TOWN","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬜⬜⬜","color":"#92d9e3","bold":true}]
#execute if score .map_screen .data = .15 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"LIGHTHOUSE","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]

$execute if score .-1 .num matches $(mapSize) run title @a[tag=me_player] actionbar [{"text":""},{"text":"$(mapName)","color":"$(mapColor)","bold":true},{"text":" | Size: "},{"text":"§k⬜⬛⬜","color":"dark_gray","bold":true}]
$execute if score .0 .num matches $(mapSize) run title @a[tag=me_player] actionbar [{"text":""},{"text":"$(mapName)","color":"$(mapColor)","bold":true},{"text":" | Size: "},{"text":"⬜⬜⬜","color":"#92d9e3","bold":true}]
$execute if score .1 .num matches $(mapSize) run title @a[tag=me_player] actionbar [{"text":""},{"text":"$(mapName)","color":"$(mapColor)","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
$execute if score .2 .num matches $(mapSize) run title @a[tag=me_player] actionbar [{"text":""},{"text":"$(mapName)","color":"$(mapColor)","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
$execute if score .3 .num matches $(mapSize) run title @a[tag=me_player] actionbar [{"text":""},{"text":"$(mapName)","color":"$(mapColor)","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]


# moving this here too for sake of simplicty (its using all the same data)
kill @e[type=text_display,tag=map_name]

$summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",line_width:2147483647,Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[$(mapTextScale)f,12f,$(mapTextScale)]},text:{"text":" $(mapIcon) $(mapName) $(mapIcon) ","font":"fancy","bold":false,"color":"$(mapColor)"}}

#execute if score .map_screen .data = .2 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11.5f,12f,11.5f]},text:{"text":" ⏣ DIVIDE ⏣ ","font":"fancy","bold":false,"color":"#97DEA0"}}
#execute if score .map_screen .data = .3 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[14.5f,12f,14.5f]},text:{"text":" 📡 HEX 📡 ","font":"fancy","bold":false,"color":"#A797DE"}}
#execute if score .map_screen .data = .6 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,12f,12f]},text:{"text":" 🏬 TOWERS 🏬 ","font":"fancy","bold":false,"color":"#9DAAC7"}}
#execute if score .map_screen .data = .4 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15.2f,12f,15.2f]},text:{"text":"🚇 COVES 🚇","font":"fancy","bold":false,"color":"#9595DE"}}
#execute if score .map_screen .data = .9 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[13f,12f,13f]},text:{"text":" ⛰ VALLEY ⛰ ","font":"fancy","bold":false,"color":"#DEAF97"}}
#execute if score .map_screen .data = .7 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12.5f,12f,12.5f]},text:{"text":" ✼ GARDEN ✼ ","font":"fancy","bold":false,"color":"#97DEBF"}}
#execute if score .map_screen .data = .1 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,12f,10f]},text:{"text":" 🐓 TINY TOWN 🐓 ","font":"fancy","bold":false,"color":"#97C4DE"}}
#execute if score .map_screen .data = .8 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[14.5f,12f,14.5f]},text:{"text":" 💧 RIVER 💧 ","font":"fancy","bold":false,"color":"#97C4DE"}}
#execute if score .map_screen .data = .5 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[9.6f,12f,9.6f]},text:{"text":"🌴 LIGHTHOUSE 🌴","font":"fancy","bold":false,"color":"#97C4DE"}}
#execute if score .map_screen .data = .0 .num run summon text_display 265.25 -38.1 -235.65 {Tags:["map_name"],billboard:"fixed",Rotation:[90F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11.5f,12f,9.6f]},text:{"text":" ? RANDOM ? ","font":"fancy","bold":false,"color":"#97C4DE"}}


