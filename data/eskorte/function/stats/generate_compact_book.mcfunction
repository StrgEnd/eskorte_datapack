# Eine Seite mit allen Spielern - als JSON-Objekt, nicht String
data modify storage minecraft:stats pages append value {"text":"","extra":[{"text":"\n","color":"black"},{"text":"  MATCH RESULTS","bold":true,"color":"gold"},{"text":"\n\n","color":"black"},{"text":"== ATTACKERS ==","bold":true,"color":"red","underlined":true},{"text":"\n","color":"black"}]}

# Alle Attackers zur Seite hinzufügen
execute as @a[team=attackers] run function eskorte:stats/add_compact_attacker

# Defenders Überschrift hinzufügen
data modify storage minecraft:stats pages[0].extra append value {"text":"\n== DEFENDERS ==","bold":true,"color":"blue","underlined":true}
data modify storage minecraft:stats pages[0].extra append value {"text":"\n","color":"black"}

# Alle Defenders zur Seite hinzufügen
execute as @a[team=defenders] run function eskorte:stats/add_compact_defender

# Buch geben
execute as @a run function eskorte:stats/give_final_book