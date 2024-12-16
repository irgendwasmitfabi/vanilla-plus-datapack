execute if entity @s[nbt=!{RootVehicle:{}},tag=!sitting] run summon armor_stand ~ ~-0.9 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["seat"]}
execute if entity @s[nbt=!{RootVehicle:{}},tag=!sitting] run data modify entity @e[limit=1,tag=seat,nbt=!{Passengers:[{}]},sort=nearest] Rotation set from entity @s Rotation

execute if entity @s[nbt=!{RootVehicle:{}},tag=!sitting] run ride @s mount @e[limit=1,tag=seat,nbt=!{Passengers:[{}]},sort=nearest]
execute if entity @s[nbt={RootVehicle:{}},tag=!sitting] run tag @s add sitting

execute if entity @s[nbt=!{RootVehicle:{}},tag=sitting] run kill @e[limit=1,tag=seat,nbt=!{Passengers:[{}]},sort=nearest]
execute if entity @s[nbt=!{RootVehicle:{}},tag=sitting] run scoreboard players reset @s sit
execute if entity @s[nbt=!{RootVehicle:{}},tag=sitting] run tag @s remove sitting