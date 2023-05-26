execute if score .start_cd .data = .100 .num run title @a times 4 8 5
execute if score .start_cd .data = .60 .num run title @a times 4 8 5
execute if score .start_cd .data = .100 .num run title @a title {"text":"Starting : 5"}
execute if score .start_cd .data = .80 .num run title @a title {"text":"Starting : 4"}
execute if score .start_cd .data = .60 .num run title @a title {"text":"Starting : 3"}
execute if score .start_cd .data = .40 .num run title @a title {"text":"Starting : 2"}
execute if score .start_cd .data = .20 .num run title @a title {"text":"Starting : 1"}
execute if score .start_cd .data = .0 .num run function game:start2

scoreboard players remove .start_cd .data 1