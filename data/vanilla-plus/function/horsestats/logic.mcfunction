# Multiplier for horse speed
scoreboard objectives add horseHundred dummy
scoreboard players set @s horseHundred 100

# Get attributes of horse
execute as @e[type=horse,sort=nearest,limit=1] store result score @p horseSpeed run data get entity @e[type=horse,sort=nearest,limit=1] attributes[{id: "minecraft:movement_speed"}].base 4317
execute as @e[type=horse,sort=nearest,limit=1] store result score @p horseJump run data get entity @e[type=horse,sort=nearest,limit=1] attributes[{id: "minecraft:jump_strength"}].base 100

scoreboard players operation @s horseSpeedDec = @s horseSpeed
scoreboard players operation @s horseSpeedDec %= @s horseHundred
scoreboard players operation @s horseSpeed -= @s horseSpeedDec
scoreboard players operation @s horseSpeed /= @s horseHundred

# Check ranges and set jump heights
execute if score @s horseJump matches 40..49 run scoreboard players set @s horseJump 1
execute if score @s horseJump matches 50..59 run scoreboard players set @s horseJump 2
execute if score @s horseJump matches 60..69 run scoreboard players set @s horseJump 2
execute if score @s horseJump matches 70..79 run scoreboard players set @s horseJump 3
execute if score @s horseJump matches 80..89 run scoreboard players set @s horseJump 4
execute if score @s horseJump matches 90..99 run scoreboard players set @s horseJump 4
execute if score @s horseJump matches 100.. run scoreboard players set @s horseJump 5

title @s clear
title @s actionbar [{"text":"   Jump: ","color":"green"}, {"score":{"name":"@s","objective":"horseJump"},"color":"blue"}, {"text":"   Speed (b/s): ","color":"green"}, {"score":{"name":"@s","objective":"horseSpeed"},"color":"blue"},{"text":".","color":"blue"}, {"score":{"name":"@s","objective":"horseSpeedDec"},"color":"blue"}]

# Reset scoreboards
scoreboard players reset @a horseSpeed
scoreboard players reset @a horseSpeedDec

scoreboard objectives remove horseHundred

scoreboard players reset @a horseJump