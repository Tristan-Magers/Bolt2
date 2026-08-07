scoreboard players set .count .calc -1
execute if items entity @s weapon.mainhand gold_ingot store result score .count .calc run data get entity @s SelectedItem.count

execute store result score .coins .calc run clear @s minecraft:gold_ingot 0

scoreboard players add @s balloon_talk 1
execute store result score .rand .calc run random value -5..1
execute as @s[scores={balloon_talk=5..}] store result score .rand .calc run random value 2..20
execute if score .count .calc matches 1.. run scoreboard players set .rand .calc 1000

# asking for money
execute if score .rand .calc matches -5 run tellraw @s [{"text":"[Phil] "},{"text":"There is money laying around for anyone who tries to look. Money that can be turned into balloons."}]
execute if score .rand .calc matches -4 run tellraw @s [{"text":"[Phil] "},{"text":"We have the finest balloons for can get. One coin and it's yours."}]
execute if score .rand .calc matches -3 run tellraw @s [{"text":"[Phil] "},{"text":"Hey there! Better pay up before you can get a balloon."}]
execute if score .rand .calc matches -2 run tellraw @s [{"text":"[Phil] "},{"text":"You want a balloon? Find a coin and we can talk."}]
execute if score .rand .calc matches -1 run tellraw @s [{"text":"[Phil] "},{"text":"One balloon for one coin."}]
execute if score .rand .calc matches 0 run tellraw @s [{"text":"[Phil] "},{"text":"Hey. I don't see any coins, so you don't see any balloons."}]
execute if score .rand .calc matches 1 run tellraw @s [{"text":"[Phil] "},{"text":"Hey. Find a coin or find somewhere else to be."}]

# bante
execute if score .rand .calc matches 2 run tellraw @s [{"text":"[Phil] "},{"text":"People keep trying to hand me ice cream, I'm 45. I gotta watch my heart."}]
execute if score .rand .calc matches 3 run tellraw @s [{"text":"[Phil] "},{"text":"Huh? It's not too bad. About two grand on a good day."}]
execute if score .rand .calc matches 4 run tellraw @s [{"text":"[Phil] "},{"text":"Yeah, sometimes a kid floats into space. You know what they say though, all publicity is good publicity."}]
execute if score .rand .calc matches 5 run tellraw @s [{"text":"[Phil] "},{"text":"If other people needed the coins so bad, they wouldn't be dropping them."}]
execute if score .rand .calc matches 6 run tellraw @s [{"text":"[Phil] "},{"text":"They are just quarters to you, but I got a guy that takes them for 26 cents."}]
execute if score .rand .calc matches 7 run tellraw @s [{"text":"[Phil] "},{"text":"Don't look at me like that. I ain't fat, its just my coin pouch."}]
execute if score .rand .calc matches 8 run tellraw @s [{"text":"[Phil] "},{"text":"I don't want to float away neither. That's why i fill my shoes with cement. Haven't left this spot the last five days."}]
execute if score .rand .calc matches 9 run tellraw @s [{"text":"[Phil] "},{"text":"You aren't going to let an arrow hit my balloons right? These are NASA quality."}]
execute if score .rand .calc matches 10 run tellraw @s [{"text":"[Phil] "},{"text":"Why balloons? It's not about what people say they want. It's about what they don't even know they want."}]
execute if score .rand .calc matches 11 run tellraw @s [{"text":"[Phil] "},{"text":"I'll give you a deal, 100 coins for 101 balloons."}]
execute if score .rand .calc matches 12 run tellraw @s [{"text":"[Phil] "},{"text":"You are standing awfully close. I better not see a balloon go missing."}]
execute if score .rand .calc matches 13 run tellraw @s [{"text":"[Phil] "},{"text":"The balloons above me? My friend, I'm looking at you and you cannot afford something that quality."}]
execute if score .rand .calc matches 14 run tellraw @s [{"text":"[Phil] "},{"text":"Tried to sell balloons over on towers. Bad times. Location location location."}]
execute if score .rand .calc matches 15 run tellraw @s [{"text":"[Phil] "},{"text":"Yeah, one balloon stops one arrow. You can't find better than that."}]
execute if score .rand .calc matches 16 run tellraw @s [{"text":"[Phil] "},{"text":"Saw someone try and take out five balloons yesterday...poor guy. Not a pretty sight."}]
execute if score .rand .calc matches 17 run tellraw @s [{"text":"[Phil] "},{"text":"Helium!? Don't insult me. Our stuff is ten times lighter."}]
execute if score .rand .calc matches 18 run tellraw @s [{"text":"[Phil] "},{"text":"Our balloons once shielded the president. True story."}]
execute if score .rand .calc matches 19 run tellraw @s [{"text":"[Phil] "},{"text":"I may have forgot how to move my feet."}]
execute if score .rand .calc matches 20 run tellraw @s [{"text":"[Phil] "},{"text":"Don't insult the sewer clowns, they are my best customers."}]

execute if score .rand .calc matches -100..100 at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 2
execute if score .rand .calc matches -100..100 at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 0.6 0.8

# success
execute if score .rand .calc matches 1000 at @s unless entity @s[scores={balloon_talk_cool=1..}] run playsound minecraft:entity.villager.trade master @a ~ ~ ~ 1 2
execute if score .rand .calc matches 1000 unless entity @s[scores={balloon_talk_cool=1..}] run tellraw @s [{"text":"[Phil] "},{"color":"gold","text":"Here you go. Pleasure doing business."}]
execute if score .rand .calc matches 1000 run function game:player/give/balloon
execute if score .rand .calc matches 1000 run item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:-1,add:1b,conditions:[]}]
execute if score .rand .calc matches 1000 run scoreboard players set @s balloon_talk_cool 20

execute if score .rand .calc matches 1000 if score .coins .calc matches 100.. run clear @s gold_ingot 99
execute if score .rand .calc matches 1000 if score .coins .calc matches 100.. run tag @s remove last_balloon
execute if score .rand .calc matches 1000 if score .coins .calc matches 100.. run scoreboard players set @s drop_balloon 100

execute as @e[tag=balloon_guy_interact] run data remove entity @s interaction

scoreboard players set @s balloon_talk2 0

