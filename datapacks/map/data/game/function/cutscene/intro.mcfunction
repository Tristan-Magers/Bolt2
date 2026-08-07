#
#
execute as @s[scores={t=1..}] run tp @s ^ ^ ^0.001

#
execute as @s[scores={t=1}] run scoreboard players set .cutscene_running .data 1

#
execute as @s[scores={t=3}] run tag @a remove head_show

execute as @s[scores={t=1}] run kill @e[tag=head,type=armor_stand]
execute as @s[scores={t=81}] run kill @e[tag=head,type=armor_stand]

#execute as @s[scores={t=3},tag=!rev] run function game:game/mapstart

#execute as @s[scores={t=3},tag=!rev] run summon minecraft:armor_stand ^2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=9},tag=!rev] run summon minecraft:armor_stand ^3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[235F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=15},tag=!rev] run summon minecraft:armor_stand ^4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[230F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=21},tag=!rev] run summon minecraft:armor_stand ^5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[225F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=27},tag=!rev] run summon minecraft:armor_stand ^6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[220F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}

#execute as @s[scores={t=3},tag=!rev] run summon minecraft:armor_stand ^-2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=9},tag=!rev] run summon minecraft:armor_stand ^-3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[305F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=15},tag=!rev] run summon minecraft:armor_stand ^-4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[310F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=21},tag=!rev] run summon minecraft:armor_stand ^-5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[315F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=27},tag=!rev] run summon minecraft:armor_stand ^-6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[320F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}

#execute as @s[scores={t=3},tag=rev] run summon minecraft:armor_stand ^2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[60F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=9},tag=rev] run summon minecraft:armor_stand ^3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[55F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=15},tag=rev] run summon minecraft:armor_stand ^4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[50F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=21},tag=rev] run summon minecraft:armor_stand ^5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[45F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
#execute as @s[scores={t=27},tag=rev] run summon minecraft:armor_stand ^6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[40F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}

#execute as @s[scores={t=3},tag=rev] run summon minecraft:armor_stand ^-2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[120F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=9},tag=rev] run summon minecraft:armor_stand ^-3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[125F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=15},tag=rev] run summon minecraft:armor_stand ^-4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[130F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=21},tag=rev] run summon minecraft:armor_stand ^-5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[135F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
#execute as @s[scores={t=27},tag=rev] run summon minecraft:armor_stand ^-6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[140F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}

execute as @s[scores={t=3}] run summon minecraft:armor_stand ^2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[150F,0F],Tags:["head","red","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
execute as @s[scores={t=9}] run summon minecraft:armor_stand ^3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[145F,0F],Tags:["head","red","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
execute as @s[scores={t=15}] run summon minecraft:armor_stand ^4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[140F,0F],Tags:["head","red","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
execute as @s[scores={t=21}] run summon minecraft:armor_stand ^5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[135F,0F],Tags:["head","red","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}
execute as @s[scores={t=27}] run summon minecraft:armor_stand ^6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[130F,0F],Tags:["head","red","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16711680}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16711680}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}}}}

execute as @s[scores={t=3}] run summon minecraft:armor_stand ^-2 ^2.06 ^5 {NoBasePlate:1b,Rotation:[-150F,0F],Tags:["head","blue","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
execute as @s[scores={t=9}] run summon minecraft:armor_stand ^-3 ^2.11 ^4.9 {NoBasePlate:1b,Rotation:[-145F,0F],Tags:["head","blue","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
execute as @s[scores={t=15}] run summon minecraft:armor_stand ^-4 ^2.16 ^4.8 {NoBasePlate:1b,Rotation:[-140F,0F],Tags:["head","blue","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
execute as @s[scores={t=21}] run summon minecraft:armor_stand ^-5 ^2.21 ^4.7 {NoBasePlate:1b,Rotation:[-135F,0F],Tags:["head","blue","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}
execute as @s[scores={t=27}] run summon minecraft:armor_stand ^-6 ^2.26 ^4.6 {NoBasePlate:1b,Rotation:[-130F,0F],Tags:["head","blue","init"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":22015}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":22015}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":22015}}}}

data modify storage minecraft:macro yaw set from entity @s Rotation[0]
execute as @e[type=armor_stand,tag=init] at @s run function game:cutscene/intro_macro with storage minecraft:macro

#
execute as @s[scores={t=12}] run title @a times 10 40 10
execute as @s[scores={t=12}] run title @a title {"text":"VS","font":"fancy"}

execute as @s[scores={t=1}] run title @a times 0 1 8
execute as @s[scores={t=1}] run title @a title {"translate":"\u0001","font":"title"}

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

execute as @s[scores={t=21}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=21}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=21}] as @a[team=red,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=red,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=21}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=21}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=27}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=27}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=27}] as @a[team=red,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=red,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=27}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=27}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

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

execute as @s[scores={t=21}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=21}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=21}] as @a[team=blue,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=blue,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=21}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=21}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=27}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=27}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=27}] as @a[team=blue,limit=1,tag=!head_show] run scoreboard players operation @e[tag=head,tag=blue,limit=1,tag=!head_show] bow_texture = @s bow_texture
execute as @s[scores={t=27}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=27}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

#
execute as @e[tag=head] if entity @s[nbt=!{equipment:{head:{id:"minecraft:player_head",count:1}}}] if entity @s[nbt=!{equipment:{head:{id:"minecraft:target",count:1}}}] run kill @s

#
#execute as @s[scores={t=20}] run effect give @a darkness 4 10 true

#
execute as @s[scores={t=64}] run title @a times 16 30 20
execute as @s[scores={t=64}] run title @a title {"translate":"\u0001","font":"title"}

# Mode text

execute as @s[scores={t=64}] run tellraw @a [{"text":"\n"}]

execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .0 .num run tellraw @a [{"text":"Now playing..."},{"text":"CAPTURE THE FLAG","color":"gold"}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .0 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .0 .num run tellraw @a [{"text":"Return their flag to your flag spot. (first to 3)"}]

execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .0 .num run tellraw @a [{"text":"Now playing..."},{"text":"CAPTURE THE FLAG","color":"gold"}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .0 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .0 .num run tellraw @a [{"text":"Return their flag to your flag spot. (first to 3)"}]

execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num run tellraw @a [{"text":"Now playing..."},{"text":"CAPTURE THE POINT","color":"yellow"}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .1 .num run tellraw @a [{"text":"Stand on their flag for one second. (first to 5)"}]

execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tellraw @a [{"text":"Now playing..."},{"text":"TEAM DEATHMATCH","color":"aqua"}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_objective .data = .2 .num run tellraw @a [{"text":"Get more kills than the opposing team. (first to 9)"}]

execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"Now playing..."},{"text":"INFECTION","color":"green"}]
execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"Survivors (blue) return 12 scrap to their"}]
execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"generator (from kills and crates)"}]
execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .6 .num run tellraw @a [{"text":"Infected (red) kill survivors >:)"}]

execute as @s[scores={t=64}] if score .mode .data = .7 .num run tellraw @a [{"text":"Now playing..."},{"text":"TARGET PRACTICE","color":"red"}]
execute as @s[scores={t=64}] if score .mode .data = .7 .num run tellraw @a [{"text":"---------------------------------","color":"dark_gray","bold":true}]
execute as @s[scores={t=64}] if score .mode .data = .7 .num run tellraw @a [{"text":"Break as many targets as you can!"}]

execute as @s[scores={t=94}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_arrow .data = .1 .num run tellraw @a [{"text":"Wind Arrows","color":"dark_aqua"},{"text":": Arrows explode if they hit the ground\n","color":"white"}]
execute as @s[scores={t=94}] if score .mode .data = .1 .num if score .tmi .data = .1 .num if score .tmi_arrow .data = .2 .num run tellraw @a [{"text":"Three in the Quiver","color":"gold"},{"text":": Arrows only reload on hit\n","color":"white"}]

execute as @s[scores={t=114}] unless score .mode .data = .6 .num if score .testing_mode .data = .1 .num run tellraw @a [{"text":"Practice mode: Only one team active. Game ends if anyone selects team in lobby."}]

execute as @s[scores={t=64}] run tellraw @a [{"text":"\n"}]

#
execute as @s[scores={t=99}] run scoreboard players set .cutscene_running .data 0
#execute as @s[scores={t=99}] run function game:game/mapstart

execute as @s[scores={t=99}] store result score generatorCount macro_counter run data get storage maps:active gens
execute as @s[scores={t=99}] run scoreboard players set generatorCounter macro_counter 0
execute as @s[scores={t=99}] run function game:map/item_generator with storage maps:active gens[0]

execute if score .mode .data = .7 .num as @s[scores={t=99}] run function game:game/spawn_targets
#execute if score .mode .data = .7 .num if score .map .data = .1 .num as @s[scores={t=99}] run function game:game/spawn_targets
#execute if score .mode .data = .7 .num if score .map .data = .6 .num as @s[scores={t=99}] run function game:game/spawn_targets

execute if score .mode .data = .7 .num as @s[scores={t=6}] as @a at @s run playsound minecraft:music.dragon master @s[tag=!no_music] ~ ~ ~ 0.8 1

#
execute as @s[scores={t=100..}] if score .mode .data = .6 .num run bossbar set minecraft:scrap visible true

#
execute as @s[scores={t=119..}] run kill @s

#
execute as @s[scores={t=100..160}] run gamemode spectator @a[scores={team_pref=-1}]
execute as @s[scores={t=110}] run tag @a[scores={team_pref=-1}] add is_spectating

#
execute if score .mode .data = .7 .num run tag @e[tag=head,tag=red] add posed
execute as @e[tag=head,tag=!posed] run function game:cutscene/pose_stand