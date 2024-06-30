scoreboard players remove @s bow_ui_page 1
scoreboard players set @s[scores={bow_ui_page=..-1}] bow_ui_page 4

function game:bow_ui/make_page

playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 1 0.9
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 0.9