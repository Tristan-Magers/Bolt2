execute if score .start_cd .data = .100 .num run title @a times 4 8 5
execute if score .start_cd .data = .70 .num run title @a times 4 8 5
execute if score .start_cd .data = .100 .num run title @a title {"text":"Starting in 5","font":"fancy"}
execute if score .start_cd .data = .90 .num run title @a title {"text":"Starting in 4","font":"fancy"}
execute if score .start_cd .data = .70 .num run title @a title {"text":"Starting in 3","font":"fancy"}
execute if score .start_cd .data = .50 .num run title @a title {"text":"Starting in 2","font":"fancy"}
execute if score .start_cd .data = .30 .num run title @a title {"text":"Starting in 1","font":"fancy"}
execute if score .start_cd .data = .10 .num if entity @a[scores={team_pref=0..}] run title @a times 10 40 0
execute if score .start_cd .data = .10 .num if entity @a[scores={team_pref=0..}] run title @a title {"translate":"\u0001","font":"title"}
execute if score .start_cd .data = .0 .num if entity @a[scores={team_pref=0..}] run function game:start2
execute if score .start_cd .data = .0 .num unless entity @a[scores={team_pref=0..}] run title @a title {"text":"No Players","font":"fancy"}

execute if score .start_cd .data = .70 .num as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute if score .start_cd .data = .50 .num as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute if score .start_cd .data = .30 .num as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute if score .start_cd .data = .10 .num as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.9
execute if score .start_cd .data = .10 .num if entity @a[scores={team_pref=0..}] run effect give @a minecraft:slowness 3 5 true

scoreboard players remove .start_cd .data 1