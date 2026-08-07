# countdown
execute if score .edit_cd .data matches 110 run title @a times 4 8 5
execute if score .edit_cd .data matches 110 run title @a title {text:"Editing in 5",font:fancy}
execute if score .edit_cd .data matches 110 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 2
execute if score .edit_cd .data matches 90 run title @a title {text:"Editing in 4",font:fancy}
execute if score .edit_cd .data matches 90 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 1.5
execute if score .edit_cd .data matches 70 run title @a title {text:"Editing in 3",font:fancy}
execute if score .edit_cd .data matches 70 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 1.125
execute if score .edit_cd .data matches 50 run title @a title {text:"Editing in 2",font:fancy}
execute if score .edit_cd .data matches 50 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 0.84375
execute if score .edit_cd .data matches 30 run title @a title {text:"Editing in 1",font:fancy}
execute if score .edit_cd .data matches 30 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.5 0.6328125

# transition screen
execute if score .edit_cd .data matches 15 run title @a times 10 10 10
execute if score .edit_cd .data matches 15 run title @a title {translate:"\u0001",font:title}
execute if score .edit_cd .data matches 15 run effect give @a minecraft:slowness 1 5 true
execute if score .edit_cd .data matches 15 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.9

# open map in editor
execute if score .edit_cd .data matches 0 store result storage minecraft:macro mapID int 1 run scoreboard players get .map_display .data
execute if score .edit_cd .data matches 0 run function bcm:map/edit/from_id with storage minecraft:macro

scoreboard players remove .edit_cd .data 1