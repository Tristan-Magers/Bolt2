# get ms since last update
execute store result score .ms .calc run stopwatch query bcm:mspt_tracker 1000
stopwatch restart bcm:mspt_tracker

execute if score .ms .calc matches ..525 run scoreboard players operation #limit commands += limit.step commands
execute if score .ms .calc matches 550.. unless score #limit commands matches ..10000 run scoreboard players operation #limit commands -= limit.step commands
#title @a actionbar {score:{name:"limit",objective:"commands"}}

schedule function bcm:util/mspt_update 10t