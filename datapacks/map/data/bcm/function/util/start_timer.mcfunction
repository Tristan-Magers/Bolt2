stopwatch create bcm:timer

# begin tracking server performance to calculate average mspt
stopwatch create bcm:mspt_tracker
schedule function bcm:util/mspt_update 10t