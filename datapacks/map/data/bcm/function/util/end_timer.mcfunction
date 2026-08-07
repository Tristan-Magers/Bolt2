# get total milliseconds
execute store result score .ms_total .calc store result score .ms .calc run stopwatch query bcm:timer 1000
stopwatch remove bcm:timer

# milliseconds -> m:s.ms
scoreboard players operation .s .calc = .ms .calc
scoreboard players operation .ms .calc %= .1000 .num
execute store result score .m .calc run scoreboard players operation .s .calc /= .1000 .num
scoreboard players operation .s .calc %= .60 .num
scoreboard players operation .m .calc /= .60 .num

# formatting & leading zeros
data remove storage bcm timer

execute if score .ms .calc matches ..9 run data modify storage bcm timer.ms set value ["00",{score:{name:".ms",objective:".calc"}},"ms"]
execute if score .ms .calc matches 10..99 run data modify storage bcm timer.ms set value ["0",{score:{name:".ms",objective:".calc"}},"ms"]
execute if score .ms .calc matches 100.. run data modify storage bcm timer.ms set value [{score:{name:".ms",objective:".calc"}},"ms"]

execute if score .m .calc matches 1.. if score .s .calc matches ..9 run data modify storage bcm timer.s set value ["0",{score:{name:".s",objective:".calc"}},"s "]
execute if score .m .calc matches 1.. if score .s .calc matches 10.. run data modify storage bcm timer.s set value [{score:{name:".s",objective:".calc"}},"s "]
execute if score .m .calc matches 0 run data modify storage bcm timer.s set value [{score:{name:".s",objective:".calc"}},"s "]
execute if score .m .calc matches 0 if score .s .calc matches 0 run data modify storage bcm timer.s set value ""

execute if score .m .calc matches 0 run data modify storage bcm timer.m set value ""
execute if score .m .calc matches 1.. run data modify storage bcm timer.m set value [{score:{name:".m",objective:".calc"}},"m "]

execute if score .m .calc matches 0 if score .s .calc matches 0 if score .ms .calc matches 0 run data modify storage bcm timer.ms set value "less than 1 tick"

# stop tracking mspt
stopwatch remove bcm:mspt_tracker
schedule clear bcm:util/mspt_update
scoreboard players set #limit commands 30000