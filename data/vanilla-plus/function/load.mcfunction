# Death counter in tab
scoreboard objectives add deaths deathCount
scoreboard objectives setdisplay list deaths

# Sit trigger
scoreboard objectives add sit trigger
function vanilla-plus:sit/loop

# Horse stats trigger
scoreboard objectives add horsestats trigger

# Horse stats
scoreboard objectives add horseSpeed dummy
scoreboard objectives add horseSpeedDec dummy

scoreboard objectives add horseJump dummy
scoreboard objectives add horseJumpDec dummy