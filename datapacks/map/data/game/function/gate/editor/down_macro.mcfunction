$execute unless data storage macro gate.sound.close if entity @s[y_rotation=0] positioned ~-1 ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=90] positioned ~ ~ ~-1 run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=180] positioned ~-$(width) ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=270] positioned ~ ~ ~-$(width) run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1
$execute unless data storage macro gate.sound.close positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air destroy

$execute if data storage macro gate.sound.close positioned ^-0.5 ^$(current_height) ^ positioned ^$(center) ^0.5 ^ run function game:gate/sound with storage macro gate.sound.close

$execute if entity @s[y_rotation=0] positioned ~-1 ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~
$execute if entity @s[y_rotation=90] positioned ~ ~ ~-1 run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~ ~ run clone \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
    ~1 ~$(current_height) ~
$execute if entity @s[y_rotation=270] positioned ~ ~ ~-$(width) run clone \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
    ~ ~$(current_height) ~1

$execute if entity @s[y_rotation=0] positioned ~-1 ~ ~ run fill \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
air strict
$execute if entity @s[y_rotation=90] positioned ~ ~ ~-1 run fill \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
air strict
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~ ~ run fill \
    ~1 $(mem_height) ~ \
    ~$(width) $(mem_height) ~ \
air strict
$execute if entity @s[y_rotation=270] positioned ~ ~ ~-$(width) run fill \
    ~ $(mem_height) ~1 \
    ~ $(mem_height) ~$(width) \
air strict
#$say down $(current_height) $(mem_height)