$execute if entity @s[y_rotation=0] positioned ~-1 ~-188 ~ run clone \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
    ~1 $(y) ~ \
masked
$execute if entity @s[y_rotation=90] positioned ~ ~-188 ~-1 run clone \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
    ~ $(y) ~1 \
masked
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~-188 ~ run clone \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
    ~1 $(y) ~ \
masked
$execute if entity @s[y_rotation=270] positioned ~ ~-188 ~-$(width) run clone \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
    ~ $(y) ~1 \
masked

$execute if entity @s[y_rotation=0] positioned ~-1 ~-188 ~ run fill \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
air strict
$execute if entity @s[y_rotation=90] positioned ~ ~-188 ~-1 run fill \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
air strict
$execute if entity @s[y_rotation=180] positioned ~-$(width) ~-188 ~ run fill \
    ~1 ~1 ~ \
    ~$(width) ~$(current_height) ~ \
air strict
$execute if entity @s[y_rotation=270] positioned ~ ~-188 ~-$(width) run fill \
    ~ ~1 ~1 \
    ~ ~$(current_height) ~$(width) \
air strict