tp @a -43 -60 16

clear @a

kill @e[tag=blueflag]
kill @e[tag=redflag]

tag @a remove hasflag
tag @a remove hasspawn

scoreboard players set @a ded -1