# Spieleranzahl zählen
scoreboard players set #player_count temp 0
execute as @a[team=attackers] run scoreboard players add #player_count temp 1
execute as @a[team=defenders] run scoreboard players add #player_count temp 1

# Storage komplett leeren
data remove storage minecraft:stats pages
data remove storage minecraft:stats attackers_page
data remove storage minecraft:stats defenders_page

# Entscheidung: Kompakte Version (<=8 Spieler) oder Mehrseitige Version (>=8 Spieler)
execute if score #player_count temp matches ..8 run function eskorte:stats/generate_compact_book
execute if score #player_count temp matches 9.. run function eskorte:stats/generate_multi_page_book