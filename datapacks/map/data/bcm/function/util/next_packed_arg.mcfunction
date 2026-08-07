# .value .calc = packed args
# .max .calc = power of 10 > arg max value
# .separator .calc = digits separating values

# returns next arg value
# sets .value .calc to remaining args

scoreboard players set .order .calc 1
function bcm:util/next_packed_arg_loop

scoreboard players operation .i .calc = .value .calc
scoreboard players operation .value .calc /= .order .calc
scoreboard players operation .value .calc /= .max .calc
return run scoreboard players operation .i .calc %= .order .calc