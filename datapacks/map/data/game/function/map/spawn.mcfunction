# dont ask what happened here, was bad
summon marker ~ ~ ~ {Tags:[very_temporary]}

$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run tp @n[tag=very_temporary] $(redSpawn)
tp @s[team=red] @n[tag=very_temporary]
$execute at fd8107bb-c1fa-4ddf-b8fe-d1087da4ff6f run tp @n[tag=very_temporary] $(blueSpawn)
tp @s[team=blue] @n[tag=very_temporary]

kill @e[tag=very_temporary]