# Lore mit Mob spawnen
execute at @e[tag=eskorte_start] run summon minecraft:minecart ~ ~ ~ {Tags:["eskorte_cart"],Invulnerable:1b,NoGravity:1b,Silent:1b}
execute at @e[tag=eskorte_cart] run summon minecraft:villager ~ ~ ~ {Tags:["eskorte_passenger"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute at @e[tag=eskorte_cart] run ride @e[tag=eskorte_passenger,limit=1] mount @e[tag=eskorte_cart,limit=1]

# Lore-Eigenschaften für Interaktionsschutz
data modify entity @e[tag=eskorte_cart,limit=1] Invulnerable set value 1b
data modify entity @e[tag=eskorte_cart,limit=1] NoGravity set value 1b
effect give @e[tag=eskorte_cart] minecraft:resistance 999999 255 true

# Startposition und Richtung initialisieren
execute as @e[tag=eskorte_cart] at @s run scoreboard players set @s eskorte_checkpoint 0
execute as @e[tag=eskorte_cart] at @s store result score @s eskorte_distance run data get entity @s Pos[0] 100

tellraw @a {"text":"Eskorte-Lore gespawnt!","color":"green"}