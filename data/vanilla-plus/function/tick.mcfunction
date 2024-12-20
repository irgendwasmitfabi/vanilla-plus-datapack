scoreboard players enable @a horsestats
execute as @a[scores={horsestats=1..}] run function vanilla-plus:triggers/horsestats
scoreboard players set @a horsestats 0

scoreboard players enable @a oredistribution
execute as @a[scores={oredistribution=1..}] run function vanilla-plus:triggers/oredistribution
scoreboard players set @a oredistribution 0