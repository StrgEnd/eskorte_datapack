# Prüfe für jeden escort_cart ob Spieler in der Nähe sind
execute as @e[type=minecart,tag=escort_cart] at @s store result score @s attackers_nearby run execute if entity @a[team=attackers,distance=..20]
execute as @e[type=minecart,tag=escort_cart] at @s store result score @s defenders_nearby run execute if entity @a[team=defenders,distance=..20]

# Zeige Partikel nur wenn Spieler in der Nähe sind
execute as @e[type=minecart,tag=escort_cart] at @s if score @s attackers_nearby matches 1.. run function eskorte:particles/show_influence_sphere
execute as @e[type=minecart,tag=escort_cart] at @s if score @s defenders_nearby matches 1.. run function eskorte:particles/show_influence_sphere
