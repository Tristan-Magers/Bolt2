#
execute as @s[scores={t=1}] run scoreboard players set .cutscene_running .data 1

#
execute as @s[scores={t=3}] run tag @a remove head_show

execute as @s[scores={t=1}] run kill @e[tag=head,type=armor_stand]
execute as @s[scores={t=81}] run kill @e[tag=head,type=armor_stand]

execute as @s[scores={t=3},tag=!rev] run function game:game/mapstart

execute as @s[scores={t=3},tag=!rev] run summon minecraft:armor_stand ^2 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=9},tag=!rev] run summon minecraft:armor_stand ^3 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=15},tag=!rev] run summon minecraft:armor_stand ^4 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}

execute as @s[scores={t=3},tag=!rev] run summon minecraft:armor_stand ^-2 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=9},tag=!rev] run summon minecraft:armor_stand ^-3 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=15},tag=!rev] run summon minecraft:armor_stand ^-4 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}

execute as @s[scores={t=3},tag=rev] run summon minecraft:armor_stand ^2 ^ ^5 {NoBasePlate:1b,Rotation:[60F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=9},tag=rev] run summon minecraft:armor_stand ^3 ^ ^5 {NoBasePlate:1b,Rotation:[60F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=15},tag=rev] run summon minecraft:armor_stand ^4 ^ ^5 {NoBasePlate:1b,Rotation:[60F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}

execute as @s[scores={t=3},tag=rev] run summon minecraft:armor_stand ^-2 ^ ^5 {NoBasePlate:1b,Rotation:[120F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=9},tag=rev] run summon minecraft:armor_stand ^-3 ^ ^5 {NoBasePlate:1b,Rotation:[120F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=15},tag=rev] run summon minecraft:armor_stand ^-4 ^ ^5 {NoBasePlate:1b,Rotation:[120F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}

#
execute as @s[scores={t=3}] run title @a times 10 40 10
execute as @s[scores={t=3}] run title @a title {"text":"VS","bold":"true"}

#
execute as @s[scores={t=3}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=3}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=9}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=15}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

#
execute as @s[scores={t=3}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=3}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=3}] as @a[team=red,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=red,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=3}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=9}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=9}] as @a[team=red,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=red,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=9}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=15}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=15}] as @a[team=red,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=red,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=15}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

#
execute as @s[scores={t=3}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=3}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=3}] as @a[team=blue,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=blue,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=3}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=9}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=9}] as @a[team=blue,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=blue,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=9}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=15}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=15}] as @a[team=blue,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=blue,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=15}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

#
execute as @e[tag=head] if entity @s[nbt=!{ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}] if entity @s[nbt=!{ArmorItems:[{},{},{},{id:"minecraft:target",Count:1b}]}] run kill @s

#
execute as @s[scores={t=20}] run effect give @a darkness 4 10 true

#
execute as @s[scores={t=99}] run scoreboard players set .cutscene_running .data 0
execute as @s[scores={t=99}] run function game:game/mapstart

execute if score .mode .data = .7 .num as @s[scores={t=99}] run function game:game/spawn_targets
execute if score .mode .data = .7 .num if score .map .data = .1 .num as @s[scores={t=99}] run function game:game/spawn_targets
execute if score .mode .data = .7 .num if score .map .data = .6 .num as @s[scores={t=99}] run function game:game/spawn_targets

execute if score .mode .data = .7 .num as @s[scores={t=6}] as @a at @s run playsound minecraft:music.credits record @s ~ ~ ~ 0.8 1

#
execute as @s[scores={t=119..}] run kill @s

#
execute as @s[scores={t=100..160}] run gamemode spectator @a[scores={team_pref=-1}]

#
execute if score .mode .data = .7 .num run tag @e[tag=head,tag=red] add posed
execute as @e[tag=head,tag=!posed] run function game:cutscene/pose_stand