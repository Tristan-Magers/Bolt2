scoreboard players add @s bow_ui_page 1
scoreboard players set @s[scores={bow_ui_page=5..}] bow_ui_page 0

function game:bow_ui/make_page

playsound minecraft:ui.loom.take_result master @s
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.1