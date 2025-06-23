# Suche nach der nächsten Schiene in Rückwärtsrichtung (langsamer)
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~ #minecraft:rails unless entity @s[x=~-1,distance=..0.1] run tp @s ~-0.05 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~ #minecraft:rails unless entity @s[x=~1,distance=..0.1] run tp @s ~0.05 ~ ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~-1 #minecraft:rails unless entity @s[z=~-1,distance=..0.1] run tp @s ~ ~ ~-0.05
execute as @e[tag=eskorte_cart] at @s if block ~ ~ ~1 #minecraft:rails unless entity @s[z=~1,distance=..0.1] run tp @s ~ ~ ~0.05

# Diagonale Bewegungen (rückwärts)
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~-1 #minecraft:rails unless entity @s[x=~-1,z=~-1,distance=..0.1] run tp @s ~-0.035 ~ ~-0.035
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~ ~1 #minecraft:rails unless entity @s[x=~-1,z=~1,distance=..0.1] run tp @s ~-0.035 ~ ~0.035
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~-1 #minecraft:rails unless entity @s[x=~1,z=~-1,distance=..0.1] run tp @s ~0.035 ~ ~-0.035
execute as @e[tag=eskorte_cart] at @s if block ~1 ~ ~1 #minecraft:rails unless entity @s[x=~1,z=~1,distance=..0.1] run tp @s ~0.035 ~ ~0.035

# Höhenunterschiede (rückwärts)
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~1 ~ #minecraft:rails run tp @s ~-0.05 ~0.05 ~
execute as @e[tag=eskorte_cart] at @s if block ~-1 ~-1 ~ #minecraft:rails run tp @s ~-0.05 ~-0.05 ~
execute as @e[tag=eskorte_cart] at @s if block ~ ~1 ~-1 #minecraft:rails run tp @s ~ ~0.05 ~-0.05
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~-1 #minecraft:rails run tp @s ~ ~-0.05 ~-0.05