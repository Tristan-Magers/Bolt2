title @a times 20 60 20

tag @a remove hasflag

title @a subtitle {"text":"","color":"red"}

execute if score Blue Scores >= .endscore .stats run title @a[tag=!lobby] title {"text":"BLUE WIN!","color":"aqua","font":"fancy"}
execute if score Red Scores >= .endscore .stats run title @a[tag=!lobby] title {"text":"RED WIN!","color":"red","font":"fancy"}

execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats run title @a[tag=!lobby] subtitle {"text":"TIME OUT","color":"dark_gray","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores = Red Scores run title @a[tag=!lobby] title {"text":"DRAW!","color":"gray","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores > Red Scores run title @a[tag=!lobby] title {"text":"HALF WIN!","color":"aqua","font":"fancy"}
execute if score Blue Scores < .endscore .stats if score Red Scores < .endscore .stats if score Blue Scores < Red Scores run title @a[tag=!lobby] title {"text":"HALF WIN!","color":"red","font":"fancy"}

execute if entity @a[tag=lobby,gamemode=adventure,scores={team_pref=0..}] if score .testing_mode .data matches 1 run title @a[tag=playing] times 10 30 10
execute if entity @a[tag=lobby,gamemode=adventure,scores={team_pref=0..}] if score .testing_mode .data matches 1 run title @a[tag=!lobby] title {"text":"","color":"dark_gray","font":"fancy"}
execute if entity @a[tag=lobby,gamemode=adventure,scores={team_pref=0..}] if score .testing_mode .data matches 1 run title @a[tag=!lobby] subtitle {"text":"","color":"dark_gray","font":"fancy"}
execute if entity @a[tag=lobby,gamemode=adventure,scores={team_pref=0..}] if score .testing_mode .data matches 1 run title @a[tag=playing] title {"text":"PLAYER JOINED","color":"dark_gray","font":"fancy"}
execute if entity @a[tag=lobby,gamemode=adventure,scores={team_pref=0..}] if score .testing_mode .data matches 1 run title @a[tag=playing] subtitle {"text":"Returning to lobby","color":"dark_gray","font":"fancy"}

scoreboard players set .end_countdown .data 100
scoreboard players set @a invul 1000

kill @e[tag=redflag]
kill @e[tag=blueflag]

#
tag @a remove change_rank
tag @a[team=red] add change_rank
tag @a[team=blue] add change_rank
tag @a[tag=lobby] remove change_rank
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players set @a[team=red,tag=change_rank,scores={win_streak=0..}] win_streak 0
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players set @a[team=blue,tag=change_rank,scores={win_streak=0..}] win_streak 0
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players set @a[team=blue,tag=change_rank,scores={win_streak=..0}] win_streak 0
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players set @a[team=red,tag=change_rank,scores={win_streak=..0}] win_streak 0

execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players remove @a[team=red,tag=change_rank] win_streak 1
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players remove @a[team=blue,tag=change_rank] win_streak 1
execute if score Blue Scores >= Red Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players add @a[team=blue,tag=change_rank] win_streak 1
execute if score Red Scores >= Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players add @a[team=red,tag=change_rank] win_streak 1

# tries to mix up teams if tie with winstreak
execute if score Red Scores = Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players add @r[tag=change_rank,scores={win_streak=..5}] win_streak 1
execute if score Red Scores = Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players add @r[tag=change_rank,scores={win_streak=..5}] win_streak 1
execute if score Red Scores = Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players add @r[tag=change_rank,scores={win_streak=..5}] win_streak 1
execute if score Red Scores = Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players remove @r[tag=change_rank,scores={win_streak=-5..}] win_streak 1
execute if score Red Scores = Blue Scores if score .mode .data = .1 .num if score .ranked .data = .1 .num run scoreboard players remove @r[tag=change_rank,scores={win_streak=-5..}] win_streak 1

execute unless score Red Scores = Blue Scores if score .mode .data = .1 .num if score .tmi .data = .0 .num if score .ranked .data = .1 .num run function game:game/rank_changes