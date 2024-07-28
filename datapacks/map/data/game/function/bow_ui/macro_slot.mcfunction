#
$item replace entity @s inventory.$(slot) with bow[custom_data={shop:1}]
$item modify entity @s inventory.$(slot) game:model_$(texture)
$item modify entity @s inventory.$(slot) game:name/$(texture)