# Death counter in tab
scoreboard objectives add deaths deathCount
scoreboard objectives setdisplay list deaths

# Sit trigger
scoreboard objectives add sit trigger
function vanilla-plus:sit/loop

tellraw @s {"text":"Datapack loaded","color":"#e637fa"}