# Lore vorwärts bewegen (Richtung Ziel)
execute as @e[tag=eskorte_cart] at @s facing entity @e[tag=eskorte_end,limit=1] feet run tp @s ^ ^ ^0.03
execute as @e[tag=eskorte_cart] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 2