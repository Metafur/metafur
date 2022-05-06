
# Add death objective
scoreboard objectives add hardcore_deaths deathCount

# Change difficulty
difficulty hard

#loaded tellraw
tellraw @a ["",{"text":"\n"},{"text":"Semi Hardcore Datapack: ","color":"red"},{"text":"LOADED","color":"#C29494"},{"text":"\n"},{"text":"Every time a player dies they lose a heart capsule.","italic":true,"color":"gray"},{"text":"\n"}]

# detect when player eats enchanted golden apple
scoreboard objectives add ate_apple minecraft.used:minecraft.enchanted_golden_apple
