# Spieler-Überprüfungen und Statusanzeigen
execute as @e[tag=eskorte_cart] at @s run title @a[distance=..20] actionbar [{"text":"Angreifer: ","color":"red"},{"score":{"name":"@s","objective":"eskorte_distance"},"color":"white"},{"text":" | Verteidiger: ","color":"blue"},{"score":{"name":"#defenders","objective":"eskorte_distance"},"color":"white"}]

# Timer-Anzeige
execute if score #timer eskorte_timer matches 1.. run title @a[team=attackers] subtitle [{"text":"Zeit: ","color":"yellow"},{"score":{"name":"#timer","objective":"eskorte_timer"},"color":"white"},{"text":" Ticks","color":"yellow"}]
execute if score #timer eskorte_timer matches 1.. run title @a[team=defenders] subtitle [{"text":"Zeit: ","color":"yellow"},{"score":{"name":"#timer","objective":"eskorte_timer"},"color":"white"},{"text":" Ticks","color":"yellow"}]

# Spieler ohne Team warnen
execute as @a unless entity @s[team=attackers] unless entity @s[team=defenders] run title @s actionbar {"text":"Wähle ein Team! /function eskorte:teams/join_attack oder /function eskorte:teams/join_defend","color":"gold"}