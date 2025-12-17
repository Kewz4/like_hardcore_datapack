# Check if Allay is holding Nether Star (Item given)
execute unless entity @s[nbt={HandItems:[{id:"minecraft:nether_star"}]}] run clear @p[tag=allay_ns_interactor] minecraft:nether_star 1

# Delete items to prevent dropping
data merge entity @s {HandItems:[{},{}]}

# Kill the Allay
kill @s
