# Teams erstellen
team add attackers "Angreifer"
team add defenders "Verteidiger"

# Team-Eigenschaften
team modify attackers color red
team modify defenders color blue
team modify attackers friendlyFire false
team modify defenders friendlyFire false

tellraw @a {"text":"Teams erstellt: Angreifer (Rot) und Verteidiger (Blau)","color":"yellow"}