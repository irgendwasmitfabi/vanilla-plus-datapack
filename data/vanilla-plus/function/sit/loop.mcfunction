schedule function vanilla-plus:sit/loop 1s

execute if entity @p[nbt=!{RootVehicle:{}},tag=!sitting] as @a[nbt=!{RootVehicle:{}},tag=!sitting] unless score @s sit = @s sit run scoreboard players enable @s sit

execute if entity @p[scores={sit=1..}] as @a[scores={sit=1..}] at @s run function vanilla-plus:triggers/sit