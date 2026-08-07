give @s string[custom_name={"text":"Balloon (breaks when released)","italic":false,"color":"gray"},lore=[{"text":"Lowers your gravity","color":"white","italic":false},{"text":"Can be shot by arrows","color":"white","italic":false}],consumable={consume_seconds:10000,has_consume_particles:false},use_effects={speed_multiplier:1.0,can_sprint:true}] 1

scoreboard players remove @s drop_balloon 1

execute as @s[scores={drop_balloon=1..}] run function game:player/give/balloon