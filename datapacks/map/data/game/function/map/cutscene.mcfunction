kill @e[tag=cutscene]

summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["cutscene","intro","init"]}
$tp @n[type=armor_stand,tag=init] $(introCutscene)
# redundant teleport to be absolutely 100% sure that pitch is 0
execute as @n[type=armor_stand,tag=init] at @s run tp @s ~ ~ ~ ~ 0
tag @e[type=armor_stand] remove init
