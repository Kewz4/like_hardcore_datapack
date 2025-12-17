# Increment usage count
scoreboard players add @s allay_ns_uses 1

# Execute command
like_hardcore set @s health 10

# Grant Advancements based on count
execute if score @s allay_ns_uses matches 1 run advancement grant @s only allay_ns:count/1_edge_of_life
execute if score @s allay_ns_uses matches 2 run advancement grant @s only allay_ns:count/2_again_really
execute if score @s allay_ns_uses matches 3 run advancement grant @s only allay_ns:count/3_can_you_stop
execute if score @s allay_ns_uses matches 4 run advancement grant @s only allay_ns:count/4_expensive_habit
execute if score @s allay_ns_uses matches 5 run advancement grant @s only allay_ns:count/5_cheating_death
execute if score @s allay_ns_uses matches 6.. run advancement grant @s only allay_ns:count/6_immortal

# Handle Entity Logic
tag @s add allay_ns_interactor
execute at @s run execute as @e[type=minecraft:allay,sort=nearest,limit=1,distance=..6] run function allay_ns:check_and_kill
tag @s remove allay_ns_interactor

# Reset Trigger
advancement revoke @s only allay_ns:interact_allay_nether_star
