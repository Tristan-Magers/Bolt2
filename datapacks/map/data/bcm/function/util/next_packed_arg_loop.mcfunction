scoreboard players operation .order .calc *= .10 .num
scoreboard players operation .i .calc = .value .calc
scoreboard players operation .i .calc /= .order .calc
scoreboard players operation .i .calc %= .max .calc

execute if score .i .calc = .separator .calc run return 1
execute if score .order .calc > .max .calc run return fail
return run function bcm:util/next_packed_arg_loop