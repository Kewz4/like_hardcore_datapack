like_hardcore set @s health 10
tag @s add allay_ns_interactor
execute at @s run execute as @e[type=minecraft:allay,sort=nearest,limit=1,distance=..6] run function allay_ns:check_and_kill
tag @s remove allay_ns_interactor
advancement revoke @s only allay_ns:interact_allay_nether_star
