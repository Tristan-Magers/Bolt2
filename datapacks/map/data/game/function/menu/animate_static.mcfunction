#elevator
# states 0 - waiting, 1-open ready to move, 2-waiting to close to move, 3-open waiting for players to leave

# Tounrament Hall
execute positioned 255 -46 -170 run tag @a[distance=30..] remove tournament_hall
execute positioned 255 -46 -170 run tag @a[distance=..10.1] add tournament_hall

execute as @a[tag=tournament_hall,tag=!tournament_hall2] run particle minecraft:end_rod 254.0 -44.00 -163.5 0.1 1 0.1 0 30 force @s
execute as @a[tag=tournament_hall,tag=!tournament_hall2] run particle minecraft:end_rod 247.0 -44.00 -163.5 0.1 1 0.1 0 30 force @s
execute as @a[tag=tournament_hall,tag=!tournament_hall2] run particle minecraft:totem_of_undying 250.5 -44.50 -163.5 0 0 0 0.9 100 force @s
execute as @a[tag=tournament_hall,tag=!tournament_hall2] run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1

tag @a[tag=!tournament_hall] remove tournament_hall2
tag @a[tag=tournament_hall] add tournament_hall2

# Transition elevators
tag @a remove in_elv
tag @a[x=231,y=-43,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure] add in_elv
tag @a[x=231,y=-39,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure] add in_elv
scoreboard players reset @a[tag=!in_elv] .elevator
scoreboard players add @a[tag=in_elv] .elevator 1
execute as @a[x=231,y=-43,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure,scores={.elevator=10..}] at @s run fill 231 -43 -174 232 -46 -172 air
execute as @a[x=231,y=-43,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure,scores={.elevator=10..}] at @s run tp @s ~ ~-3 ~40

execute as @a[x=231,y=-39,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure,scores={.elevator=10..}] at @s run fill 229 -35 -235 230 -38 -237 air
execute as @a[x=231,y=-39,z=-211,dy=2,dx=0.4,dz=-3,gamemode=adventure,scores={.elevator=10..}] at @s run tp @s ~-2 ~ ~-23

# Bottom elevator
execute if score .elv_1_state .elevator matches 0 run scoreboard players set .elv_1_timer .elevator 0
execute if score .elv_1_state .elevator matches 0 if entity @a[x=231,y=-51,z=-213,distance=..5,gamemode=adventure] run scoreboard players set .elv_1_state .elevator 1
execute if score .elv_1_state .elevator matches 1 unless entity @a[x=231,y=-51,z=-213,distance=..5,gamemode=adventure] run scoreboard players set .elv_1_state .elevator 0
execute if score .elv_1_state .elevator matches 1 unless entity @a[x=231,y=-50,z=-211,dy=2,dx=0.39,dz=-3,gamemode=adventure] run scoreboard players set .elv_1_timer .elevator 0
execute if score .elv_1_state .elevator matches 1 if entity @a[x=231,y=-50,z=-211,dy=2,dx=0.39,dz=-3,gamemode=adventure] run scoreboard players add .elv_1_timer .elevator 1
execute if score .elv_1_state .elevator matches 1 if score .elv_1_timer .elevator matches 10.. run scoreboard players set .elv_1_state .elevator 2
execute if score .elv_1_state .elevator matches 2 run scoreboard players add .elv_1_timer .elevator 1
execute if score .elv_1_state .elevator matches 2 if score .elv_1_timer .elevator matches 20.. as @a[x=231,y=-50,z=-211,dy=2,dx=0.39,dz=-3,gamemode=adventure] at @s run tp @s ~ ~7 ~
execute if score .elv_1_state .elevator matches 2 if score .elv_1_timer .elevator matches 20.. run scoreboard players set .elv_1_state .elevator 0

# Mid enter elevator
execute if score .elv_4_state .elevator matches 0 run scoreboard players set .elv_4_timer .elevator 0
execute if score .elv_4_state .elevator matches 0 if entity @a[x=231,y=-47,z=-166,distance=..5,gamemode=adventure] run scoreboard players set .elv_4_state .elevator 1
execute if score .elv_4_state .elevator matches 1 unless entity @a[x=231,y=-47,z=-166,distance=..5,gamemode=adventure] run scoreboard players set .elv_4_state .elevator 0
execute if score .elv_4_state .elevator matches 1 unless entity @a[x=231,y=-47,z=-166,dy=2,dx=0.39,dz=-3,gamemode=adventure] run scoreboard players set .elv_4_timer .elevator 0
execute if score .elv_4_state .elevator matches 1 if entity @a[x=231,y=-47,z=-166,dy=2,dx=0.39,dz=-3,gamemode=adventure] run scoreboard players add .elv_4_timer .elevator 1
execute if score .elv_4_state .elevator matches 1 if score .elv_4_timer .elevator matches 10.. run scoreboard players set .elv_4_state .elevator 2
execute if score .elv_4_state .elevator matches 2 run scoreboard players add .elv_4_timer .elevator 1
execute if score .elv_4_state .elevator matches 2 if score .elv_4_timer .elevator matches 20.. as @a[x=231,y=-47,z=-166,dy=2,dx=0.39,dz=-3,gamemode=adventure] at @s run tp @s ~ ~8 ~-46
execute if score .elv_4_state .elevator matches 2 if score .elv_4_timer .elevator matches 20.. run scoreboard players set .elv_4_state .elevator 0

# Top elevator
execute if score .elv_2_state .elevator matches 0 run scoreboard players set .elv_2_timer .elevator 0
execute if score .elv_2_state .elevator matches 0 if entity @a[x=229,y=-39,z=-235,dy=3,dx=1.00,dz=-3] run scoreboard players set .elv_2_state .elevator 1
execute if score .elv_2_state .elevator matches 1 run scoreboard players add .elv_2_timer .elevator 1
execute if score .elv_2_state .elevator matches 1 if score .elv_2_timer .elevator matches 15.. unless entity @a[x=229,y=-39,z=-235,dy=3,dx=1.00,dz=-3] run fill 229 -35 -235 230 -38 -237 minecraft:barrier
execute if score .elv_2_state .elevator matches 1 if score .elv_2_timer .elevator matches 15.. unless entity @a[x=229,y=-39,z=-235,dy=3,dx=1.00,dz=-3] run scoreboard players set .elv_2_state .elevator 0

# Exit Mid elevator
execute if score .elv_3_state .elevator matches 0 run scoreboard players set .elv_3_timer .elevator 0
execute if score .elv_3_state .elevator matches 0 if entity @a[x=231,y=-47,z=-172,dy=3,dx=1.00,dz=-3] run scoreboard players set .elv_3_state .elevator 1
execute if score .elv_3_state .elevator matches 1 run scoreboard players add .elv_3_timer .elevator 1
execute if score .elv_3_state .elevator matches 1 if score .elv_3_timer .elevator matches 15.. unless entity @a[x=231,y=-47,z=-172,dy=3,dx=1.00,dz=-3] run fill 231 -43 -174 232 -46 -172 minecraft:barrier
execute if score .elv_3_state .elevator matches 1 if score .elv_3_timer .elevator matches 15.. unless entity @a[x=231,y=-47,z=-172,dy=3,dx=1.00,dz=-3] run scoreboard players set .elv_3_state .elevator 0

# Elv Doors
execute unless score .elv_1_state .elevator matches 1 run tag @e[tag=lobby_door_bottom] remove open
execute if score .elv_1_state .elevator matches 1 run tag @e[tag=lobby_door_bottom] add open

execute unless score .elv_2_state .elevator matches 1 run tag @e[tag=lobby_door_top] remove open
execute if score .elv_2_state .elevator matches 1 run tag @e[tag=lobby_door_top] add open

execute unless score .elv_3_state .elevator matches 1 run tag @e[tag=lobby_door_mid_exit] remove open
execute if score .elv_3_state .elevator matches 1 run tag @e[tag=lobby_door_mid_exit] add open

execute unless score .elv_4_state .elevator matches 1 run tag @e[tag=lobby_door_mid_enter] remove open
execute if score .elv_4_state .elevator matches 1 run tag @e[tag=lobby_door_mid_enter] add open

execute as @e[tag=lobby_door,tag=open,tag=!open2,tag=right] at @s run playsound minecraft:entity.breeze.inhale master @a[distance=..8] ~ ~1 ~1 0.4 2
execute as @e[tag=lobby_door,tag=!open,tag=open2,tag=right] at @s run playsound minecraft:entity.breeze.land master @a[distance=..8] ~ ~1 ~1 0.5 0.5

execute as @e[tag=lobby_door,tag=open,tag=!open2,tag=right] at @s run tp @s ~ ~ ~-1.1
execute as @e[tag=lobby_door,tag=!open,tag=open2,tag=right] at @s run tp @s ~ ~ ~1.1

execute as @e[tag=lobby_door,tag=open,tag=!open2,tag=left] at @s run tp @s ~ ~ ~1.1
execute as @e[tag=lobby_door,tag=!open,tag=open2,tag=left] at @s run tp @s ~ ~ ~-1.1

tag @e[tag=lobby_door,tag=!open] remove open2
tag @e[tag=lobby_door,tag=open] add open2

#now showing
scoreboard players add .menu_now_showing .timer 1

execute if score .menu_now_showing .timer matches 5 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"dark_gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 10 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 15 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"dark_gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 20 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 25 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"dark_gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 30 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"dark_gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}

execute if score .menu_now_showing .timer matches 36 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"N","font":"minecraft:fancy","color":"gray"},{"text":"OW SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 38 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NO","font":"minecraft:fancy","color":"gray"},{"text":"W SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 40 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW","font":"minecraft:fancy","color":"gray"},{"text":" SHOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 42 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW S","font":"minecraft:fancy","color":"gray"},{"text":"HOWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 44 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SH","font":"minecraft:fancy","color":"gray"},{"text":"OWING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 46 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SHO","font":"minecraft:fancy","color":"gray"},{"text":"WING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 48 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SHOW","font":"minecraft:fancy","color":"gray"},{"text":"ING","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 50 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SHOWI","font":"minecraft:fancy","color":"gray"},{"text":"NG","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 52 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SHOWIN","font":"minecraft:fancy","color":"gray"},{"text":"G","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 54 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:[{"text":"NOW SHOWING","font":"minecraft:fancy","color":"gray"},{"text":"","font":"minecraft:fancy","color":"dark_gray"}],text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}

execute if score .menu_now_showing .timer matches 60 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"dark_gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 65 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 70 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"dark_gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 75 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 80 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:{"text":"NOW SHOWING","font":"minecraft:fancy","color":"dark_gray"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}

execute if score .menu_now_showing .timer matches 120.. run scoreboard players set .menu_now_showing .timer 0

#bleps
scoreboard players add .menu_bleps_title .timer 1

execute if score .menu_bleps_title .timer matches 4 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"B","font":"minecraft:fancy","color":"gray"},{"text":"LEPS","font":"minecraft:fancy","color":"dark_gray"}]}
execute if score .menu_bleps_title .timer matches 8 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"B","font":"minecraft:fancy","color":"dark_gray"},{"text":"L","font":"minecraft:fancy","color":"gray"},{"text":"EPS","font":"minecraft:fancy","color":"dark_gray"}]}
execute if score .menu_bleps_title .timer matches 12 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"BL","font":"minecraft:fancy","color":"dark_gray"},{"text":"E","font":"minecraft:fancy","color":"gray"},{"text":"PS","font":"minecraft:fancy","color":"dark_gray"}]}
execute if score .menu_bleps_title .timer matches 16 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"BLE","font":"minecraft:fancy","color":"dark_gray"},{"text":"P","font":"minecraft:fancy","color":"gray"},{"text":"S","font":"minecraft:fancy","color":"dark_gray"}]}
execute if score .menu_bleps_title .timer matches 20 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"BLEP","font":"minecraft:fancy","color":"dark_gray"},{"text":"S","font":"minecraft:fancy","color":"gray"},{"text":"","font":"minecraft:fancy","color":"dark_gray"}]}
execute if score .menu_bleps_title .timer matches 24 run data merge entity @e[type=minecraft:text_display,x=265,y=-29,z=-237,distance=..3,limit=1] {alignment:"center",text_opacity:-1b,transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[10.249993f,10.249999f,10.249992f],translation:[0.0f,0.0f,0.0f]},text:[{"text":"","font":"minecraft:fancy","color":"gray"},{"text":"BLEPS","font":"minecraft:fancy","color":"dark_gray"}]}

execute if score .menu_bleps_title .timer matches 120.. run scoreboard players set .menu_bleps_title .timer 0

# now showing light
#scoreboard players add .menu_now_showing_light .timer 1
#execute if score .menu_now_showing_light .timer matches 9 run clone 234 -41 -253 234 -41 -245 234 -41 -252 masked move
#execute if score .menu_now_showing_light .timer matches 18 run clone 234 -41 -253 234 -41 -244 234 -41 -254 masked move
#execute if score .menu_now_showing_light .timer matches 18.. run scoreboard players set .menu_now_showing_light .timer 0

# blue sign
scoreboard players add .menu_blue_sign .timer 1

execute if score .menu_blue_sign .timer matches 1 run fill 231 -37 -222 231 -37 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 2 run fill 231 -36 -222 231 -36 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 3 run fill 231 -35 -222 231 -35 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 4 run fill 231 -34 -222 231 -34 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 5 run fill 231 -33 -222 231 -33 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 6 run fill 231 -32 -222 231 -32 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 7 run fill 231 -31 -222 231 -31 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 8 run fill 231 -30 -222 231 -30 -225 minecraft:pearlescent_froglight[axis=z]

execute if score .menu_blue_sign .timer matches 2 run fill 231 -37 -222 231 -37 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 3 run fill 231 -36 -222 231 -36 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 4 run fill 231 -35 -222 231 -35 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 5 run fill 231 -34 -222 231 -34 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 6 run fill 231 -33 -222 231 -33 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 7 run fill 231 -32 -222 231 -32 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 8 run fill 231 -31 -222 231 -31 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 9 run fill 231 -30 -222 231 -30 -225 minecraft:pearlescent_froglight[axis=x]

execute if score .menu_blue_sign .timer matches 3 run fill 231 -37 -222 231 -37 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 5 run fill 231 -36 -222 231 -36 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 6 run fill 231 -35 -222 231 -35 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 7 run fill 231 -34 -222 231 -34 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 8 run fill 231 -33 -222 231 -33 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 9 run fill 231 -32 -222 231 -32 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 10 run fill 231 -31 -222 231 -31 -225 minecraft:pearlescent_froglight[axis=z]
execute if score .menu_blue_sign .timer matches 11 run fill 231 -30 -222 231 -30 -225 minecraft:pearlescent_froglight[axis=z]

execute if score .menu_blue_sign .timer matches 5 run fill 231 -37 -222 231 -37 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 6 run fill 231 -36 -222 231 -36 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 7 run fill 231 -35 -222 231 -35 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 8 run fill 231 -34 -222 231 -34 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 9 run fill 231 -33 -222 231 -33 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 10 run fill 231 -32 -222 231 -32 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 11 run fill 231 -31 -222 231 -31 -225 minecraft:pearlescent_froglight[axis=x]
execute if score .menu_blue_sign .timer matches 12 run fill 231 -30 -222 231 -30 -225 minecraft:pearlescent_froglight[axis=x]

execute if score .menu_blue_sign .timer matches 13.. store result score .menu_blue_sign .timer run random value -50..-2

# red sign
scoreboard players add .menu_red_sign .timer 1

execute if score .menu_red_sign .timer matches 1 run fill 231 -37 -247 231 -37 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 2 run fill 231 -36 -247 231 -36 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 3 run fill 231 -35 -247 231 -35 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 4 run fill 231 -34 -247 231 -34 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 5 run fill 231 -33 -247 231 -33 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 6 run fill 231 -32 -247 231 -32 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 7 run fill 231 -31 -247 231 -31 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 8 run fill 231 -30 -247 231 -30 -250 minecraft:verdant_froglight[axis=z]

execute if score .menu_red_sign .timer matches 2 run fill 231 -37 -247 231 -37 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 3 run fill 231 -36 -247 231 -36 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 4 run fill 231 -35 -247 231 -35 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 5 run fill 231 -34 -247 231 -34 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 6 run fill 231 -33 -247 231 -33 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 7 run fill 231 -32 -247 231 -32 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 8 run fill 231 -31 -247 231 -31 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 9 run fill 231 -30 -247 231 -30 -250 minecraft:verdant_froglight[axis=x]

execute if score .menu_red_sign .timer matches 3 run fill 231 -37 -247 231 -37 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 5 run fill 231 -36 -247 231 -36 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 6 run fill 231 -35 -247 231 -35 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 7 run fill 231 -34 -247 231 -34 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 8 run fill 231 -33 -247 231 -33 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 9 run fill 231 -32 -247 231 -32 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 10 run fill 231 -31 -247 231 -31 -250 minecraft:verdant_froglight[axis=z]
execute if score .menu_red_sign .timer matches 11 run fill 231 -30 -247 231 -30 -250 minecraft:verdant_froglight[axis=z]

execute if score .menu_red_sign .timer matches 5 run fill 231 -37 -247 231 -37 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 6 run fill 231 -36 -247 231 -36 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 7 run fill 231 -35 -247 231 -35 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 8 run fill 231 -34 -247 231 -34 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 9 run fill 231 -33 -247 231 -33 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 10 run fill 231 -32 -247 231 -32 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 11 run fill 231 -31 -247 231 -31 -250 minecraft:verdant_froglight[axis=x]
execute if score .menu_red_sign .timer matches 12 run fill 231 -30 -247 231 -30 -250 minecraft:verdant_froglight[axis=x]

execute if score .menu_red_sign .timer matches 13.. store result score .menu_red_sign .timer run random value -50..-2

# fireworks
scoreboard players add .menu_firework .timer 1

execute if score .menu_firework .timer matches 1 store result score .menu_firework_spot .timer run random value 1..8

execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 1 run summon firework_rocket 273.67 -25.00 -257.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 2 run summon firework_rocket 273.67 -27.00 -254.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 3 run summon firework_rocket 273.67 -24.00 -248.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 4 run summon firework_rocket 273.67 -25.00 -237.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 5 run summon firework_rocket 273.67 -26.00 -231.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 6 run summon firework_rocket 273.67 -23.00 -224.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 7 run summon firework_rocket 273.67 -25.00 -217.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}
execute if score .menu_firework .timer matches 1 if score .menu_firework_spot .timer matches 8 run summon firework_rocket 273.67 -27.00 -212.63 {Silent:1b,LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball"}]}}}}

execute if entity @a[tag=lobby] if score .menu_firework .timer matches 35.. store result score .menu_firework .timer run random value -240..-2

#notes
scoreboard players add .menu_note .timer 1

execute if score .menu_note .timer matches 1 store result score .menu_note_spot .timer run random value 1..18

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 1 run particle minecraft:note 259 -36 -253 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 2 run particle minecraft:note 262 -36 -250 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 3 run particle minecraft:note 259 -52 -253 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 4 run particle minecraft:note 262 -52 -250 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 5 run particle minecraft:note 257 -36 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 6 run particle minecraft:note 257 -40 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 7 run particle minecraft:note 257 -44 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 8 run particle minecraft:note 257 -48 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 9 run particle minecraft:note 257 -52 -258 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 10 run particle minecraft:note 259 -36 -219 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 11 run particle minecraft:note 262 -36 -222 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 12 run particle minecraft:note 259 -52 -219 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 13 run particle minecraft:note 262 -52 -222 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 14 run particle minecraft:note 257 -36 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 15 run particle minecraft:note 257 -40 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 16 run particle minecraft:note 257 -44 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 17 run particle minecraft:note 257 -48 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 18 run particle minecraft:note 257 -52 -214 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 8 run particle minecraft:note 259 -36 -253 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 9 run particle minecraft:note 262 -36 -250 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 10 run particle minecraft:note 259 -52 -253 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 11 run particle minecraft:note 262 -52 -250 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 16 run particle minecraft:note 257 -36 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 15 run particle minecraft:note 257 -40 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 14 run particle minecraft:note 257 -44 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 13 run particle minecraft:note 257 -48 -258 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 12 run particle minecraft:note 257 -52 -258 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 1 run particle minecraft:note 259 -36 -219 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 2 run particle minecraft:note 262 -36 -222 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 17 run particle minecraft:note 259 -52 -219 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 18 run particle minecraft:note 262 -52 -222 0.9 0.9 0.9 1 2 force

execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 7 run particle minecraft:note 257 -36 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 6 run particle minecraft:note 257 -40 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 5 run particle minecraft:note 257 -44 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 4 run particle minecraft:note 257 -48 -214 0.9 0.9 0.9 1 2 force
execute if score .menu_note .timer matches 1 if score .menu_note_spot .timer matches 3 run particle minecraft:note 257 -52 -214 0.9 0.9 0.9 1 2 force


execute if score .menu_note .timer matches 4.. run scoreboard players set .menu_note .timer 0

#blue wall
scoreboard players add .menu_blue_wall .timer 1

execute if score .menu_blue_wall .timer matches 16 run clone 231 -40 -218 231 -43 -228 235 -43 -228
execute if score .menu_blue_wall .timer matches 103 run clone 233 -40 -218 233 -43 -228 235 -43 -228

execute if score .menu_blue_wall .timer matches 111.. run scoreboard players set .menu_blue_wall .timer 0

#glass pillars
scoreboard players add .menu_glass .timer 1

execute if score .menu_glass .timer matches 50 run fill 236 -33 -258 240 -33 -258 minecraft:red_stained_glass
execute if score .menu_glass .timer matches 55 run fill 236 -33 -258 240 -33 -258 minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 55 run fill 236 -32 -258 240 -32 -258 minecraft:red_stained_glass
execute if score .menu_glass .timer matches 60 run fill 236 -32 -258 240 -32 -258 minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 60 run fill 236 -31 -258 240 -31 -258 minecraft:red_stained_glass
execute if score .menu_glass .timer matches 65 run fill 236 -31 -258 240 -31 -258 minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 65 run fill 236 -30 -258 240 -30 -258 minecraft:red_stained_glass
execute if score .menu_glass .timer matches 70 run fill 236 -30 -258 240 -30 -258 minecraft:pink_stained_glass

execute if score .menu_glass .timer matches 50 run fill 234 -33 -259 232 -33 -256 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 55 run fill 234 -33 -259 232 -33 -256 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 55 run fill 234 -32 -259 232 -32 -256 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 60 run fill 234 -32 -259 232 -32 -256 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 60 run fill 234 -31 -259 232 -31 -256 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 65 run fill 234 -31 -259 232 -31 -256 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 65 run fill 234 -30 -259 232 -30 -256 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 70 run fill 234 -30 -259 232 -30 -256 minecraft:red_stained_glass replace minecraft:pink_stained_glass

execute if score .menu_glass .timer matches 50 run fill 241 -33 -258 242 -33 -260 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 55 run fill 241 -33 -258 242 -33 -260 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 55 run fill 241 -32 -258 242 -32 -260 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 60 run fill 241 -32 -258 242 -32 -260 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 60 run fill 241 -31 -258 242 -31 -260 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 65 run fill 241 -31 -258 242 -31 -260 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if score .menu_glass .timer matches 65 run fill 241 -30 -258 242 -30 -260 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if score .menu_glass .timer matches 70 run fill 241 -30 -258 242 -30 -260 minecraft:red_stained_glass replace minecraft:pink_stained_glass

execute if score .menu_glass .timer matches 5 run fill 236 -46 -258 240 -46 -258 minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 10 run fill 236 -46 -258 240 -46 -258 minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 10 run fill 236 -45 -258 240 -45 -258 minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 15 run fill 236 -45 -258 240 -45 -258 minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 15 run fill 236 -44 -258 240 -44 -258 minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 20 run fill 236 -44 -258 240 -44 -258 minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 20 run fill 236 -43 -258 240 -43 -258 minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 25 run fill 236 -43 -258 240 -43 -258 minecraft:magenta_stained_glass

execute if score .menu_glass .timer matches 5 run fill 234 -46 -259 232 -46 -256 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 10 run fill 234 -46 -259 232 -46 -256 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 10 run fill 234 -45 -259 232 -45 -256 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 15 run fill 234 -45 -259 232 -45 -256 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 15 run fill 234 -44 -259 232 -44 -256 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 20 run fill 234 -44 -259 232 -44 -256 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 20 run fill 234 -43 -259 232 -43 -256 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 25 run fill 234 -43 -259 232 -43 -256 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass

execute if score .menu_glass .timer matches 5 run fill 241 -46 -258 242 -46 -260 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 10 run fill 241 -46 -258 242 -46 -260 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 10 run fill 241 -45 -258 242 -45 -260 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 15 run fill 241 -45 -258 242 -45 -260 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 15 run fill 241 -44 -258 242 -44 -260 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -44 -258 242 -44 -260 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -43 -258 242 -43 -260 minecraft:magenta_stained_glass replace minecraft:purple_stained_glass
execute if score .menu_glass .timer matches 25 run fill 241 -43 -258 242 -43 -260 minecraft:purple_stained_glass replace minecraft:magenta_stained_glass

execute if score .menu_glass .timer matches 15 run fill 241 -33 -214 237 -33 -214 minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -33 -214 237 -33 -214 minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -32 -214 237 -32 -214 minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 25 run fill 241 -32 -214 237 -32 -214 minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 25 run fill 241 -31 -214 237 -31 -214 minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 30 run fill 241 -31 -214 237 -31 -214 minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 30 run fill 241 -30 -214 237 -30 -214 minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 35 run fill 241 -30 -214 237 -30 -214 minecraft:light_blue_stained_glass

execute if score .menu_glass .timer matches 15 run fill 243 -33 -212 242 -33 -214 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 20 run fill 243 -33 -212 242 -33 -214 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 20 run fill 243 -32 -212 242 -32 -214 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 25 run fill 243 -32 -212 242 -32 -214 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 25 run fill 243 -31 -212 242 -31 -214 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 30 run fill 243 -31 -212 242 -31 -214 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 30 run fill 243 -30 -212 242 -30 -214 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 35 run fill 243 -30 -212 242 -30 -214 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass

execute if score .menu_glass .timer matches 15 run fill 241 -46 -258 242 -46 -260 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -46 -258 242 -46 -260 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 20 run fill 241 -45 -258 242 -45 -260 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 25 run fill 241 -45 -258 242 -45 -260 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 25 run fill 241 -44 -258 242 -44 -260 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 30 run fill 241 -44 -258 242 -44 -260 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
execute if score .menu_glass .timer matches 30 run fill 241 -43 -258 242 -43 -260 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
execute if score .menu_glass .timer matches 35 run fill 241 -43 -258 242 -43 -260 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass

execute if score .menu_glass .timer matches 60 run fill 237 -44 -216 242 -44 -216 minecraft:green_stained_glass
execute if score .menu_glass .timer matches 65 run fill 237 -44 -216 242 -44 -216 minecraft:lime_stained_glass
execute if score .menu_glass .timer matches 65 run fill 237 -43 -216 242 -43 -216 minecraft:green_stained_glass
execute if score .menu_glass .timer matches 70 run fill 237 -43 -216 242 -43 -216 minecraft:lime_stained_glass

execute if score .menu_glass .timer matches 60 run setblock 243 -44 -215 minecraft:lime_stained_glass
execute if score .menu_glass .timer matches 65 run setblock 243 -44 -215 minecraft:green_stained_glass
execute if score .menu_glass .timer matches 65 run setblock 243 -43 -215 minecraft:lime_stained_glass
execute if score .menu_glass .timer matches 70 run setblock 243 -43 -215 minecraft:green_stained_glass

execute if score .menu_glass .timer matches 95.. run scoreboard players set .menu_glass .timer 0

#jumping players
scoreboard players add .menu_dance .timer 1

execute if score .menu_dance .timer matches 2 run tag @e[tag=skin] remove dance
execute if score .menu_dance .timer matches 2 run tag @e[tag=skin] remove dance2
execute if score .menu_dance .timer matches 2 run tag @e[tag=skin] remove dance3

execute if score .menu_dance .timer matches 2 as @e[tag=skin,type=armor_stand,limit=1,sort=random] run tag @s add dance
execute if score .menu_dance .timer matches 2 as @e[tag=skin,tag=dance] run data merge entity @s {Motion:[0.0,0.6,0.0]}

execute if score .menu_dance .timer matches 8 as @e[tag=skin,type=armor_stand,limit=1,sort=random,tag=!dance] run tag @s add dance2
execute if score .menu_dance .timer matches 8 as @e[tag=skin,tag=dance2] run data merge entity @s {Motion:[0.0,0.6,0.0]}

execute if score .menu_dance .timer matches 16 as @e[tag=skin,type=armor_stand,limit=1,sort=random,tag=!dance,tag=!dance2] run tag @s add dance3
execute if score .menu_dance .timer matches 16 as @e[tag=skin,tag=dance3] run data merge entity @s {Motion:[0.0,0.6,0.0]}

execute if entity @a[tag=lobby] if score .menu_dance .timer matches 20.. store result score .menu_dance .timer run random value -12..-2

# reset
scoreboard players add .menu_reset .timer 1

execute if score .menu_reset .timer matches 70 run function game:menu/create_static

execute if entity @a[tag=lobby] if score .menu_reset .timer matches 2400.. store result score .menu_reset .timer run random value 0

#
execute as @e[tag=soda,type=item] at @s if block ~ ~0.5 ~ glass run tp @s 245 ~-0.04 -214
execute as @e[tag=glitterb,type=item] at @s if block ~ ~0.5 ~ glass run tp @s 229 ~-0.04 -241

execute as @e[tag=vending,type=interaction,tag=glitterb] on target unless entity @e[type=item,tag=glitterb] run playsound minecraft:ui.loom.select_pattern master @s 230.5 -36.25 -241.0 1 0
execute as @e[tag=vending,type=interaction,tag=glitterb] on target unless entity @e[type=item,tag=glitterb] run playsound minecraft:ui.loom.select_pattern master @s 230.5 -36.25 -241.0 1 1
execute as @e[tag=vending,type=interaction,tag=glitterb] on target unless entity @e[type=item,tag=glitterb] run playsound minecraft:ui.stonecutter.take_result master @s 230.5 -36.25 -241.0 1 0
execute as @e[tag=vending,type=interaction,tag=glitterb] on target unless entity @e[type=item,tag=glitterb] run particle poof 230.5 -36.25 -241.0 0.1 0.5 0.5 0 6 force
execute as @e[tag=vending,type=interaction,tag=glitterb] on target unless entity @e[type=item,tag=glitterb] run summon item 229 -35.9 -241 {Age:5970,PickupDelay:15,Tags:["no_kill","glitterb"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{strings:["1"]},"minecraft:custom_name":{"italic":false,"text":"Glitter Bomb"}}}}
execute as @e[tag=vending,type=interaction,tag=glitterb] on target run summon interaction 229.0 -38.0 -241.0 {width:2.5f,height:3.5f,Tags:["vending","new","glitterb"]}
execute as @e[tag=vending,type=interaction,tag=glitterb] on target run kill @e[tag=vending,type=interaction,tag=!new,tag=glitterb]
tag @e[tag=vending,type=interaction,tag=glitterb] remove new

execute as @e[tag=vending,type=interaction,tag=can] on target unless entity @e[type=item,tag=soda] run playsound minecraft:ui.loom.select_pattern master @s 246.5 -48.25 -214.0 1 0
execute as @e[tag=vending,type=interaction,tag=can] on target unless entity @e[type=item,tag=soda] run playsound minecraft:ui.loom.select_pattern master @s 246.5 -48.25 -214.0 1 1
execute as @e[tag=vending,type=interaction,tag=can] on target unless entity @e[type=item,tag=soda] run playsound minecraft:ui.stonecutter.take_result master @s 246.5 -48.25 -214.0 1 0
execute as @e[tag=vending,type=interaction,tag=can] on target unless entity @e[type=item,tag=soda] run particle poof 246.5 -48.25 -214.0 0.1 0.5 0.5 0 6 force
execute as @e[tag=vending,type=interaction,tag=can] on target unless entity @e[type=item,tag=soda] run summon item 245 -47.9 -214 {Age:5970,PickupDelay:15,Tags:["no_kill","soda"],Item:{id:"minecraft:golden_apple",count:1,components:{"minecraft:consumable":{consume_seconds:0.95},"minecraft:custom_name":{"italic":false,"text":"Can of Air"}}}}
execute as @e[tag=vending,type=interaction,tag=can] on target run summon interaction 245.0 -50.0 -214.0 {width:2.5f,height:3.5f,Tags:["vending","new","can"]}
execute as @e[tag=vending,type=interaction,tag=can] on target run kill @e[tag=vending,type=interaction,tag=!new,tag=can]
tag @e[tag=vending,type=interaction,tag=can] remove new

execute as @e[tag=soda,type=item] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @e[tag=glitterb,type=item] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}

execute as @e[tag=soda,type=item] at @s run attribute @s minecraft:gravity base set 0
execute as @e[tag=glitterb,type=item] at @s run attribute @s minecraft:gravity base set 0