# Verteidiger gewinnen
tellraw @a [{"text":"=== VERTEIDIGER GEWINNEN! ===","color":"blue","bold":true}]
tellraw @a {"text":"Die Zeit ist abgelaufen!","color":"green"}
title @a title {"text":"SIEG!","color":"blue","bold":true}
title @a subtitle {"text":"Verteidiger haben gewonnen","color":"gold"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# Spiel beenden
scoreboard players set #game_active eskorte_setup 0
scoreboard players set #timer eskorte_timer 0