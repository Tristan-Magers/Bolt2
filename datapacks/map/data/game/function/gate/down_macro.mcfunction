$execute unless data storage macro gate.sound.close if entity @s[y_rotation=0] positioned ~-1 ~$(current_height) ~ run clone \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
    ~1 ~ ~
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=90] positioned ~ ~$(current_height) ~-1 run clone \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
    ~ ~ ~1
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=180] positioned ~-$(width) ~$(current_height) ~ run clone \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
    ~1 ~ ~
$execute unless data storage macro gate.sound.close if entity @s[y_rotation=270] positioned ~ ~$(current_height) ~-$(width) run clone \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
    ~ ~ ~1
$execute unless data storage macro gate.sound.close positioned ^-1 ^$(current_height) ^ run fill ^1 ^ ^ ^$(width) ^ ^ air destroy

$execute if data storage macro gate.sound.close positioned ^-0.5 ^$(current_height) ^ positioned ^$(center) ^0.5 ^ run function game:gate/sound with storage macro gate.sound.close

$execute if entity @s[y_rotation=0] positioned ~-1 ~$(current_height) ~ run clone \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
    ~1 ~ ~
$execute if entity @s[y_rotation=90] positioned ~ ~$(current_height) ~-1 run clone \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
    ~ ~ ~1
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~$(current_height) ~ run clone \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
    ~1 ~ ~
$execute if entity @s[y_rotation=270] positioned ~ ~$(current_height) ~-$(width) run clone \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
    ~ ~ ~1

$execute if entity @s[y_rotation=0] positioned ~-1 ~$(current_height) ~ run fill \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
air strict
$execute if entity @s[y_rotation=90] positioned ~ ~$(current_height) ~-1 run fill \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
air strict
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~$(current_height) ~ run fill \
    ~1 ~-187 ~ \
    ~$(width) ~-187 ~ \
air strict
$execute if entity @s[y_rotation=270] positioned ~ ~$(current_height) ~-$(width) run fill \
    ~ ~-187 ~1 \
    ~ ~-187 ~$(width) \
air strict
#$say down $(current_height) ~-187