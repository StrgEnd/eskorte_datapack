# Automatische Zuteilung basierend auf Team-Größe
execute store result score #attackers eskorte_setup if entity @a[team=attackers]
execute store result score #defenders eskorte_setup if entity @a[team=defenders]

execute if score #attackers eskorte_setup <= #defenders eskorte_setup run team join attackers @s
execute if score #attackers eskorte_setup > #defenders eskorte_setup run team join defenders @s

execute if entity @s[team=attackers] run tellraw @s {"text":"Du wurdest den Angreifern zugeteilt!","color":"red"}
execute if entity @s[team=defenders] run tellraw @s {"text":"Du wurdest den Verteidigern zugeteilt!","color":"blue"}