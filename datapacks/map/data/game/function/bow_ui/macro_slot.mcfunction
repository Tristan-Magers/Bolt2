#
$item replace entity @s inventory.$(slot) with bow[custom_data={shop:1}]
$item modify entity @s inventory.$(slot) game:model_$(texture)
$item modify entity @s inventory.$(slot) game:name/$(texture)

$execute as @s[tag=locked_$(texture)] run item replace entity @s inventory.$(slot) with bone[item_name='{"bold":false,"color":"#666666","italic":false,"text":"LOCKED"}']