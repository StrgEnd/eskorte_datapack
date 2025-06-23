# Suche nach der nächsten Schiene in Vorwärtsrichtung
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~ #minecraft:rails unless entity @s[x=~1,distance=..0.1] run tp @s ~0.1 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~ #minecraft:rails unless entity @s[x=~-1,distance=..0.1] run tp @s ~-0.1 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~1 #minecraft:rails unless entity @s[z=~1,distance=..0.1] run tp @s ~ ~ ~0.1
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~-1 #minecraft:rails unless entity @s[z=~-1,distance=..0.1] run tp @s ~ ~ ~-0.1

# Diagonale Bewegungen
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~1 #minecraft:rails unless entity @s[x=~1,z=~1,distance=..0.1] run tp @s ~0.07 ~ ~0.07
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~-1 #minecraft:rails unless entity @s[x=~1,z=~-1,distance=..0.1] run tp @s ~0.07 ~ ~-0.07
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~1 #minecraft:rails unless entity @s[x=~-1,z=~1,distance=..0.1] run tp @s ~-0.07 ~ ~0.07
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~-1 #minecraft:rails unless entity @s[x=~-1,z=~-1,distance=..0.1] run tp @s ~-0.07 ~ ~-0.07

# Höhenunterschiede
execute as @e[tag=eskorte_cart] at @s if block ~1 ~1 ~ #minecraft:rails run tp @s ~0.1 ~0.1 ~
execute as @e[tag=eskorte_cart] at @s if block ~1 ~-1 ~ #minecraft:rails run tp @s ~0.1 ~-0.1 ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~1 ~1 #minecraft:rails run tp @s ~ ~0.1 ~0.1
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~1 #minecraft:rails run tp @s ~ ~-0.1 ~0.1