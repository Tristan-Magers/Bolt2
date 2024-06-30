title @a times 20 60 20

tag @a remove hasflag

title @a subtitle {"text":"","color":"red"}

execute if score Blue Scores >= .endscore .stats run title @a title {"text":"BLUE WIN!","color":"aqua","font":"fancy"}
execute if score Red Scores >= .endscore .stats run title @a title {"text":"RED WIN!","color":"red","font":"fancy"}

execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats run title @a subtitle {"text":"TIME OUT","color":"dark_gray","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores = Red Scores run title @a title {"text":"DRAW!","color":"gray","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores > Red Scores run title @a title {"text":"HALF WIN!","color":"aqua","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores < Red Scores run title @a title {"text":"HALF WIN!","color":"red","font":"fancy"}

scoreboard players set .end_countdown .data 100
scoreboard players set @a invul 1000

kill @e[tag=redflag]
kill @e[tag=blueflag]

#
tag @a remove change_rank
tag @a[team=red] add change_rank
tag @a[team=blue] add change_rank
tag @a[tag=lobby] remove change_rank
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num run scoreboard players set @a[team=red,tag=change_rank,scores={win_streak=0..}] win_streak 0
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num run scoreboard players set @a[team=blue,tag=change_rank,scores={win_streak=0..}] win_streak 0
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num run scoreboard players set @a[team=blue,tag=change_rank,scores={win_streak=..0}] win_streak 0
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num run scoreboard players set @a[team=red,tag=change_rank,scores={win_streak=..0}] win_streak 0

execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num run scoreboard players remove @a[team=red,tag=change_rank] win_streak 1
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num run scoreboard players remove @a[team=blue,tag=change_rank] win_streak 1
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num run scoreboard players add @a[team=blue,tag=change_rank] win_streak 1
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num run scoreboard players add @a[team=red,tag=change_rank] win_streak 1

execute unless score Red Scores = Blue Scores if score .mode .data = .1 .num if score .tmi .data = .0 .num run function game:game/rank_changes