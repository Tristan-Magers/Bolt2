title @a times 20 60 20

tag @a remove hasflag

execute if score Red Scores >= .endscore .stats run title @a subtitle {"text":"","color":"red"}
execute if score Blue Scores >= .endscore .stats run title @a subtitle {"text":"","color":"white"}

execute if score Blue Scores >= .endscore .stats run title @a title {"text":"BLUE WIN!","color":"aqua"}
execute if score Red Scores >= .endscore .stats run title @a title {"text":"RED WIN!","color":"red"}

scoreboard players set .end_countdown .data 100
scoreboard players set @a invul 101

kill @e[tag=redflag]
kill @e[tag=blueflag]