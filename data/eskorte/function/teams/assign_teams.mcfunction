# Automatische Team-Zuteilung
execute as @a[team=] run function eskorte:teams/auto_assign

tellraw @a {"text":"Teams wurden automatisch zugewiesen!","color":"yellow"}