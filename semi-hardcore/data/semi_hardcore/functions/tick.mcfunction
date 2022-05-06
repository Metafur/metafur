execute as @a[scores={hardcore_deaths=0}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={hardcore_deaths=1}] run attribute @s minecraft:generic.max_health base set 18
execute as @a[scores={hardcore_deaths=2}] run attribute @s minecraft:generic.max_health base set 16
execute as @a[scores={hardcore_deaths=3}] run attribute @s minecraft:generic.max_health base set 14
execute as @a[scores={hardcore_deaths=4}] run attribute @s minecraft:generic.max_health base set 12
execute as @a[scores={hardcore_deaths=5}] run attribute @s minecraft:generic.max_health base set 10
execute as @a[scores={hardcore_deaths=6}] run attribute @s minecraft:generic.max_health base set 8
execute as @a[scores={hardcore_deaths=7}] run attribute @s minecraft:generic.max_health base set 6
execute as @a[scores={hardcore_deaths=8}] run attribute @s minecraft:generic.max_health base set 4
execute as @a[scores={hardcore_deaths=9}] run attribute @s minecraft:generic.max_health base set 2
execute as @a[scores={hardcore_deaths=10..9998}] run gamemode spectator @s
execute as @a[scores={hardcore_deaths=10..9998}] run function semi_hardcore:ban

#pardoned players
execute as @a[scores={hardcore_deaths=9999}] run gamemode survival @s
execute as @a[scores={hardcore_deaths=9999}] run scoreboard players set @s hardcore_deaths 0

# if player eats an enchanted golden apple then give them back a heart
execute as @a[scores={ate_apple=1..}] unless score @s hardcore_deaths matches ..0 run scoreboard players remove @s hardcore_deaths 1
execute as @a[scores={ate_apple=1..}] run scoreboard players reset @s ate_apple
