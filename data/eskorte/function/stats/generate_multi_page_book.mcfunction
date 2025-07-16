# === TITELSEITE ===
data modify storage minecraft:stats pages append value {"text":"","extra":[{"text":"\n\n","color":"black"},{"text":"  MATCH STATISTICS","bold":true,"color":"gold"},{"text":"\n\n","color":"black"},{"text":"  Attackers: ","color":"black"},{"text":"[Next Page]","color":"red","clickEvent":{"action":"change_page","value":"2"}},{"text":"\n\n","color":"black"},{"text":"  Defenders: ","color":"black"},{"text":"[Jump to Page]","color":"blue","clickEvent":{"action":"change_page","value":"3"}},{"text":"\n\n\n","color":"black"},{"text":"  K/D = Kills/Deaths","color":"gray","italic":true}]}

# === ATTACKERS SEITE ===
data modify storage minecraft:stats attackers_page set value {"text":"","extra":[{"text":"\n","color":"black"},{"text":"  ATTACKERS","bold":true,"color":"red","underlined":true},{"text":"\n\n","color":"black"}]}

# Alle Attackers durchgehen
execute as @a[team=attackers] run function eskorte:stats/add_attacker_stats

# Attackers-Seite hinzufügen
data modify storage minecraft:stats pages append from storage minecraft:stats attackers_page

# === DEFENDERS SEITE ===
data modify storage minecraft:stats defenders_page set value {"text":"","extra":[{"text":"\n","color":"black"},{"text":"  DEFENDERS","bold":true,"color":"blue","underlined":true},{"text":"\n\n","color":"black"}]}

# Alle Defenders durchgehen
execute as @a[team=defenders] run function eskorte:stats/add_defender_stats

# Defenders-Seite hinzufügen
data modify storage minecraft:stats pages append from storage minecraft:stats defenders_page

# === BUCH AN ALLE GEBEN ===
execute as @a run function eskorte:stats/give_final_book