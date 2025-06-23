# Interaktionsschutz - Lore zurücksetzen falls bewegt
execute as @e[tag=eskorte_cart] at @s unless block ~ ~-1 ~ minecraft:rail unless block ~ ~-1 ~ minecraft:powered_rail unless block ~ ~-1 ~ minecraft:detector_rail unless block ~ ~-1 ~ minecraft:activator_rail run tp @s ~ ~-1 ~

# Spieler in der Nähe zählen
execute as @e[tag=eskorte_cart] at @s store result score @s eskorte_distance run execute if entity @a[team=attackers,distance=..8]
execute as @e[tag=eskorte_cart] at @s store result score #defenders eskorte_distance run execute if entity @a[team=defenders,distance=..8]

# Schienenbasierte Bewegung
execute as @e[tag=eskorte_cart] at @s if score @s eskorte_distance matches 1.. if score #defenders eskorte_distance matches 0 run function eskorte:game/move_on_rails_forward
execute as @e[tag=eskorte_cart] at @s if score @s eskorte_distance matches 0 if score #defenders eskorte_distance matches 1.. run function eskorte:game/move_on_rails_backward

# Checkpoint-Überprüfung
execute as @e[tag=eskorte_cart] at @s if block ~ ~-1 ~ minecraft:emerald_block run function eskorte:game/checkpoint

# Lore auf Schienen halten
execute as @e[tag=eskorte_cart] at @s unless block ~ ~-1 ~ #minecraft:rails run function eskorte:game/return_to_rails