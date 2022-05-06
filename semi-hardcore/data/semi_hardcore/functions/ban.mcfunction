# this 9999 is here so if a player gets pardoned they will automatically be full health again
scoreboard players set @s hardcore_deaths 9999
# this function only works in servers
# it will show errors in single player console but will still work
ban @a[scores={hardcore_deaths=9999}] Ran out of Lives
