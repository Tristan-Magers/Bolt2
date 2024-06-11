execute if score .range4 .data matches 0 if entity @a[x=254.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/start4
execute if score .range4 .data matches 1 unless entity @a[x=254.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/end4
execute if score .range4 .data matches 1 if entity @a[x=254.5,y=-50,z=-266.1,distance=..0.8] run function game:lobby/range/end4

execute if score .range3 .data matches 0 if entity @a[x=251.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/start3
execute if score .range3 .data matches 1 unless entity @a[x=251.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/end3
execute if score .range3 .data matches 1 if entity @a[x=251.5,y=-50,z=-266.1,distance=..0.8] run function game:lobby/range/end3

execute if score .range2 .data matches 0 if entity @a[x=248.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/start2
execute if score .range2 .data matches 1 unless entity @a[x=248.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/end2
execute if score .range2 .data matches 1 if entity @a[x=248.5,y=-50,z=-266.1,distance=..0.8] run function game:lobby/range/end2

execute if score .range1 .data matches 0 if entity @a[x=245.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/start1
execute if score .range1 .data matches 1 unless entity @a[x=245.5,y=-50,z=-266.5,distance=..1.8] run function game:lobby/range/end1
execute if score .range1 .data matches 1 if entity @a[x=245.5,y=-50,z=-266.1,distance=..0.8] run function game:lobby/range/end1