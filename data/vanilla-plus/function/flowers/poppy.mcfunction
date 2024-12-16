tellraw @s {"text":"Test","color":"#e637fa"}

# Drop a poppy at the clicked location
execute as @a[advancements={vanilla-plus:poppy=true}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:poppy",Count:1b}}

# Reset the advancement so it can be triggered again
advancement revoke @a[advancements={vanilla-plus:poppy=true}] only vanilla-plus:poppy

