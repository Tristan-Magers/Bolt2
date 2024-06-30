#
function game:id/player

execute as @s[team=red] run team join red @a[tag=id_share]
execute as @s[team=blue] run team join blue @a[tag=id_share]

#execute as @s[team=red] run say red @a[tag=id_share]
#execute as @s[team=blue] run say blue @a[tag=id_share]