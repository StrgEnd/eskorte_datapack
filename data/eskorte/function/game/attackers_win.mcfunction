# Angreifer gewinnen
tellraw @a [{"text":"=== ANGREIFER GEWINNEN! ===","color":"red","bold":true}]
tellraw @a {"text":"Die Eskorte hat ihr Ziel erreicht!","color":"green"}
title @a title {"text":"SIEG!","color":"red","bold":true}
title @a subtitle {"text":"Angreifer haben gewonnen","color":"gold"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# Spiel beenden
scoreboard players set #game_active eskorte_setup 0
scoreboard players set #timer eskorte_timer 0