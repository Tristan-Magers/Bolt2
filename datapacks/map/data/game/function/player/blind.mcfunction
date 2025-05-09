scoreboard players remove @s blind 1

scoreboard players set @s[scores={respawn=1..}] blind -1
scoreboard players set @s[scores={invul=3..},tag=!lobby] blind -1
scoreboard players set @s[scores={blind=30..},tag=lobby] blind 26
scoreboard players add @s blind_new 1

item replace entity @s[scores={blind=20..}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/full_blind"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=19}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_95"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=18}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_90"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=17}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_85"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=16}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_80"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=15}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=14}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_70"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=13}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_65"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=12}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_60"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=11}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_55"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=10}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=9}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_45"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=8}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_40"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=7}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_35"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=6}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_30"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=5}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=4}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_20"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=3}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_15"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=2}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_10"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=1}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_5"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind=..0}] armor.head with minecraft:air

item replace entity @s[scores={blind=20..},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/full_blind"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=19},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_95"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=18},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_90"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=17},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_85"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=16},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_80"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=15},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=14},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_70"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=13},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_65"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=12},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_60"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=11},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_55"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=10},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=9},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_45"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=8},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_40"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=7},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_35"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=6},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_30"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=5},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=4},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_20"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=3},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_15"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=2},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_10"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=1},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_5"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=..0},tag=hasflag,team=red] armor.head with minecraft:blue_banner

item replace entity @s[scores={blind=20..},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/full_blind"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=19},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_95"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=18},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_90"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=17},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_85"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=16},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_80"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=15},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=14},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_70"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=13},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_65"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=12},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_60"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=11},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_55"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=10},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=9},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_45"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=8},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_40"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=7},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_35"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=6},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_30"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=5},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=4},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_20"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=3},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_15"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=2},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_10"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=1},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_5"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind=..0},tag=hasflag,team=blue] armor.head with minecraft:red_banner

item replace entity @s[scores={blind_new=1,blind=20..}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind_new=2,blind=20..}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1
item replace entity @s[scores={blind_new=3,blind=20..}] armor.head with minecraft:yellow_stained_glass_pane[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1},item_name={"bold":false,"text":" "}] 1

item replace entity @s[scores={blind_new=1,blind=20..},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind_new=2,blind=20..},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind_new=3,blind=20..},tag=hasflag,team=red] armor.head with minecraft:blue_banner[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1}] 1

item replace entity @s[scores={blind_new=1,blind=20..},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_25"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind_new=2,blind=20..},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_50"},enchantments={"minecraft:binding_curse":1}] 1
item replace entity @s[scores={blind_new=3,blind=20..},tag=hasflag,team=blue] armor.head with minecraft:red_banner[equippable={slot:"head",camera_overlay:"block/blind_75"},enchantments={"minecraft:binding_curse":1}] 1

scoreboard players set @s[scores={blind=0..4}] blind_new 0
scoreboard players set @s[scores={blind=5..9}] blind_new 1
scoreboard players set @s[scores={blind=10..14}] blind_new 2

execute as @s[scores={blind=18..,blind_new=3..}] run particle dust_plume ~ ~1.8 ~ 0.25 0 0.25 0.05 2 force