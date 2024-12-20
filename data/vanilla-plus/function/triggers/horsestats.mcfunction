execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run function vanilla-plus:horsestats/logic

execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run title @s actionbar [{"text":"You are not riding a horse!","color":"#d43117"}]
