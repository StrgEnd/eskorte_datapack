# K/D Ratio berechnen
execute store result score @s temp run scoreboard players get @s kills
scoreboard players operation @s temp *= #100 temp
execute if score @s deaths matches 0 run scoreboard players set @s deaths 1
scoreboard players operation @s kd = @s temp
scoreboard players operation @s kd /= @s deaths

# Echte Dezimalstellen berechnen
scoreboard players operation @s kd_whole = @s kd
scoreboard players operation @s kd_whole /= #100 temp
scoreboard players operation @s kd_decimal = @s kd
scoreboard players operation @s kd_decimal %= #100 temp

# Spieler kompakt zur Seite hinzufügen
execute store result storage minecraft:stats player_kills int 1 run scoreboard players get @s kills
execute store result storage minecraft:stats player_deaths int 1 run scoreboard players get @s deaths
execute store result storage minecraft:stats player_kd_whole int 1 run scoreboard players get @s kd_whole
execute store result storage minecraft:stats player_kd_decimal int 1 run scoreboard players get @s kd_decimal
data modify storage minecraft:stats player_name set from entity @s CustomName

# Daten zusammenbauen und zur Seite hinzufügen
data modify storage minecraft:stats pages[0].extra append value {"text":"","extra":[{"selector":"@s","color":"red"},{"text":"\n K:","color":"black"},{"storage":"minecraft:stats","nbt":"player_kills","color":"green"},{"text":" D:","color":"black"},{"storage":"minecraft:stats","nbt":"player_deaths","color":"red"},{"text":" K/D:","color":"black"},{"storage":"minecraft:stats","nbt":"player_kd_whole","color":"gray"},{"text":".","color":"gray"},{"storage":"minecraft:stats","nbt":"player_kd_decimal","color":"gray"},{"text":"\n","color":"black"}]}

# data modify storage minecraft:stats pages[0].extra append value {"text":"","extra":[{"selector":"@s","color":"red"},{"text":" - K:","color":"black"},{"storage":"minecraft:stats","nbt":"player_kills","color":"green"},{"text":" D:","color":"black"},{"storage":"minecraft:stats","nbt":"player_deaths","color":"red"},{"text":" K/D:","color":"black"},{"storage":"minecraft:stats","nbt":"player_kd","color":"gray"},{"text":"\\n","color":"black"}]}
