# Setup Modus starten
scoreboard players set #game_state game_state 2
tellraw @s {"text":"Setup-Modus aktiviert! Verwende die Escort-Schiene um Waypoints zu setzen.","color":"green"}

# Items direkt geben (Alternative 1 - funktioniert immer)
give @s rail[custom_name={"text":"Escort Rail","color":"gold","italic":false},lore=[{"text":"Rechtsklick auf einen Block um","color":"gray","italic":false},{"text":"einen Waypoint zu setzen","color":"gray","italic":false}],custom_data={escort_rail:1b}] 1

give @s redstone_torch[custom_name={"text":"Checkpoint Marker","color":"yellow","italic":false},lore=[{"text":"Rechtsklick auf einen Block um","color":"gray","italic":false},{"text":"einen Checkpoint zu setzen","color":"gray","italic":false}],custom_data={escort_checkpoint:1b}] 1

give @s gold_block[custom_name={"text":"Start Position","color":"green","italic":false},lore=[{"text":"Rechtsklick auf einen Block um","color":"gray","italic":false},{"text":"die Start-Position zu setzen","color":"gray","italic":false}],custom_data={escort_start:1b}] 1

give @s diamond_block[custom_name={"text":"End Position","color":"blue","italic":false},lore=[{"text":"Rechtsklick auf einen Block um","color":"gray","italic":false},{"text":"die Ziel-Position zu setzen","color":"gray","italic":false}],custom_data={escort_end:1b}] 1
