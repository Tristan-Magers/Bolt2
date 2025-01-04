#
$execute as @s[tag=locked_$(texture)] run tag @s add bow_locked
tag @s[tag=unlocked_all] remove bow_locked