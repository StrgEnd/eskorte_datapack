# Checkpoint erreicht
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s eskorte_checkpoint 1
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~ minecraft:emerald_block run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 1
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~ minecraft:emerald_block run tellraw @a {"text":"Checkpoint erreicht!","color":"gold"}