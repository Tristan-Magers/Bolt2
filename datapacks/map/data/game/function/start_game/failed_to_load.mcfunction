# this file should never run unless the chunks fail to load.
function game:end

# yeah.... probably shouldn't be here
title @a clear


# not a debug message, should go to everyone
tellraw @a [{text:" Map failed to load after 15 seconds.",color:"red"}]