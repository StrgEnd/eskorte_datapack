# Lore zurück auf die nächste Schiene setzen
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~ #minecraft:rails run tp @s ~1 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~ #minecraft:rails run tp @s ~-1 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~1 #minecraft:rails run tp @s ~ ~ ~1
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~-1 #minecraft:rails run tp @s ~ ~ ~-1
execute as @e[tag=eskorte_cart] at @s if block ~ ~1 ~ #minecraft:rails run tp @s ~ ~1 ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~ #minecraft:rails run tp @s ~ ~-1 ~