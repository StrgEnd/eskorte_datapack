# Rückwärts auf Schienen bewegen (nur wenn kein Checkpoint erreicht)
execute as @e[tag=eskorte_cart] at @s unless score @s eskorte_checkpoint matches 1 run function eskorte:game/find_next_rail_backward
execute as @e[tag=eskorte_cart] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 2