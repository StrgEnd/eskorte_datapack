# Lore rückwärts bewegen (langsamer)
execute as @e[tag=eskorte_cart] at @s unless score @s eskorte_checkpoint matches 1 facing entity @e[tag=eskorte_start,limit=1] feet run tp @s ^ ^ ^0.02
execute as @e[tag=eskorte_cart] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 2