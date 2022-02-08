team add blue
team add red

team modify blue color dark_aqua
team modify red color red

team modify blue friendlyFire false
team modify red friendlyFire false

team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams

team add noCol
team modify noCol collisionRule never

team add noColRed
team modify noColRed collisionRule never
team modify noColRed color red

team add noColBlue
team modify noColBlue collisionRule never
team modify noColBlue color dark_aqua

# objectives remove

scoreboard objectives remove ID
scoreboard objectives remove ID.item

# objectives add
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add useMap minecraft.used:minecraft.map
scoreboard objectives add placeCreeper minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add placeSlime minecraft.used:minecraft.slime_spawn_egg
scoreboard objectives add placeMagma minecraft.used:minecraft.magma_cube_spawn_egg
scoreboard objectives add snowball minecraft.used:minecraft.snowball

scoreboard objectives add snowballCount dummy

scoreboard objectives add arrowCount dummy
scoreboard objectives add arrowReload dummy

scoreboard objectives add timer dummy

scoreboard objectives add ID dummy
scoreboard players set .new ID 0

scoreboard objectives add ID.item dummy
scoreboard players set .new ID.item 0

scoreboard objectives add .stats dummy
scoreboard players set .10000 .stats 10000

scoreboard objectives add health health

scoreboard objectives add deaths deathCount
scoreboard objectives add kill minecraft.custom:minecraft.player_kills

scoreboard objectives add kills dummy
scoreboard objectives add killStreak dummy

scoreboard objectives add respawn dummy

scoreboard objectives add Scores dummy

scoreboard objectives add flagtime dummy

scoreboard objectives add t dummy
scoreboard objectives add t2 dummy
scoreboard objectives add t3 dummy
scoreboard objectives add t4 dummy
scoreboard objectives add t5 dummy

scoreboard objectives add crossbowUse minecraft.used:minecraft.crossbow
scoreboard objectives add crossbowReload dummy
scoreboard objectives add crossbowTime dummy

scoreboard players set .CrossKills .stats 15
scoreboard players set .GrenadeKills .stats 4
scoreboard players set .WallKills .stats 5
scoreboard players set .endscore .stats 5