#
item replace entity @s[tag=red] weapon.mainhand with bow
item replace entity @s[tag=blue] weapon.offhand with bow

#
function game:algor/random_8

data merge entity @s[scores={random=0}] {Pose:{LeftArm:[2f,0f,-10f]}}
data merge entity @s[scores={random=1}] {Pose:{LeftArm:[-30f,-20f,0f]}}
data merge entity @s[scores={random=2}] {Pose:{LeftArm:[-120f,-15f,20f]}}
data merge entity @s[scores={random=3}] {Pose:{LeftArm:[-100f,-15f,75f]}}
data merge entity @s[scores={random=4}] {Pose:{LeftArm:[274f,322f,79f]}}
data merge entity @s[scores={random=5}] {Pose:{LeftArm:[0f,336f,342f]}}
data merge entity @s[scores={random=6}] {Pose:{LeftArm:[206f,335f,40f]}}
data merge entity @s[scores={random=7}] {Pose:{LeftArm:[-10f,0f,337f]}}

function game:algor/random_8

data merge entity @s[scores={random=0}] {Pose:{RighArm:[2f,0f,10f]}}
data merge entity @s[scores={random=1}] {Pose:{RightArm:[-30f,20f,0f]}}
data merge entity @s[scores={random=2}] {Pose:{RightArm:[-120f,15f,-20f]}}
data merge entity @s[scores={random=3}] {Pose:{RightArm:[-100f,15f,-75f]}}
data merge entity @s[scores={random=4}] {Pose:{RightArm:[274f,-322f,-79f]}}
data merge entity @s[scores={random=5}] {Pose:{RightArm:[0f,-336f,-342f]}}
data merge entity @s[scores={random=6}] {Pose:{RightArm:[206f,-355f,-40f]}}
data merge entity @s[scores={random=7}] {Pose:{RightArm:[-10f,0f,-337f]}}

function game:algor/random_8

data merge entity @s[scores={random=1}] {Pose:{Head:[8f,14f,5f]}}
data merge entity @s[scores={random=2}] {Pose:{Head:[356f,347f,2f]}}
data merge entity @s[scores={random=3}] {Pose:{Head:[354f,0f,0f]}}
data merge entity @s[scores={random=4}] {Pose:{Head:[356f,10f,360f]}}
data merge entity @s[scores={random=5}] {Pose:{Head:[356f,349f,356f]}}
data merge entity @s[scores={random=6}] {Pose:{Head:[356f,0f,0f]}}
data merge entity @s[scores={random=7}] {Pose:{Head:[4f,0f,1f]}}

function game:algor/random_8

data merge entity @s[scores={random=1}] {Pose:{Body:[1f,3f,1f]}}
data merge entity @s[scores={random=2}] {Pose:{Body:[-1f,3f,-1f]}}
data merge entity @s[scores={random=3}] {Pose:{Body:[-2f,0f,1f]}}
data merge entity @s[scores={random=4}] {Pose:{Body:[2f,0f,-1f]}}
data merge entity @s[scores={random=5}] {Pose:{Body:[1f,-1f,1f]}}
data merge entity @s[scores={random=6}] {Pose:{Body:[0f,2f,-1f]}}
data merge entity @s[scores={random=7}] {Pose:{Body:[-1f,1f,0f]}}

tag @s add posed

#
function game:algor/random_8

execute as @s[scores={random=0}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @s[scores={random=1}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @s[scores={random=2}] at @s run tp @s ~ ~ ~ ~3 ~
execute as @s[scores={random=3}] at @s run tp @s ~ ~ ~ ~1 ~
execute as @s[scores={random=4}] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @s[scores={random=5}] at @s run tp @s ~ ~ ~ ~-3 ~
execute as @s[scores={random=6}] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @s[scores={random=7}] at @s run tp @s ~ ~ ~ ~-7 ~

#
item modify entity @s[scores={bow_texture=0}] weapon.mainhand game:model_0
item modify entity @s[scores={bow_texture=1}] weapon.mainhand game:model_1
item modify entity @s[scores={bow_texture=2}] weapon.mainhand game:model_2
item modify entity @s[scores={bow_texture=3}] weapon.mainhand game:model_3
item modify entity @s[scores={bow_texture=4}] weapon.mainhand game:model_4
item modify entity @s[scores={bow_texture=5}] weapon.mainhand game:model_5
item modify entity @s[scores={bow_texture=6}] weapon.mainhand game:model_6
item modify entity @s[scores={bow_texture=7}] weapon.mainhand game:model_7
item modify entity @s[scores={bow_texture=8}] weapon.mainhand game:model_8
item modify entity @s[scores={bow_texture=9}] weapon.mainhand game:model_9
item modify entity @s[scores={bow_texture=10}] weapon.mainhand game:model_10
item modify entity @s[scores={bow_texture=11}] weapon.mainhand game:model_11
item modify entity @s[scores={bow_texture=12}] weapon.mainhand game:model_12
item modify entity @s[scores={bow_texture=13}] weapon.mainhand game:model_13
item modify entity @s[scores={bow_texture=14}] weapon.mainhand game:model_14
item modify entity @s[scores={bow_texture=15}] weapon.mainhand game:model_15
item modify entity @s[scores={bow_texture=16}] weapon.mainhand game:model_16
item modify entity @s[scores={bow_texture=17}] weapon.mainhand game:model_17

item modify entity @s[scores={bow_texture=0}] weapon.offhand game:model_0
item modify entity @s[scores={bow_texture=1}] weapon.offhand game:model_1
item modify entity @s[scores={bow_texture=2}] weapon.offhand game:model_2
item modify entity @s[scores={bow_texture=3}] weapon.offhand game:model_3
item modify entity @s[scores={bow_texture=4}] weapon.offhand game:model_4
item modify entity @s[scores={bow_texture=5}] weapon.offhand game:model_5
item modify entity @s[scores={bow_texture=6}] weapon.offhand game:model_6
item modify entity @s[scores={bow_texture=7}] weapon.offhand game:model_7
item modify entity @s[scores={bow_texture=8}] weapon.offhand game:model_8
item modify entity @s[scores={bow_texture=9}] weapon.offhand game:model_9
item modify entity @s[scores={bow_texture=10}] weapon.offhand game:model_10
item modify entity @s[scores={bow_texture=11}] weapon.offhand game:model_11
item modify entity @s[scores={bow_texture=12}] weapon.offhand game:model_12
item modify entity @s[scores={bow_texture=13}] weapon.offhand game:model_13
item modify entity @s[scores={bow_texture=14}] weapon.offhand game:model_14
item modify entity @s[scores={bow_texture=15}] weapon.offhand game:model_15
item modify entity @s[scores={bow_texture=16}] weapon.offhand game:model_16
item modify entity @s[scores={bow_texture=17}] weapon.offhand game:model_17