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

# Spielerdaten zur Attackers-Seite hinzufügen
data modify storage minecraft:stats attackers_page.extra append value {"text":"","extra":[{"selector":"@s","color":"red","bold":true},{"text":"\n","color":"black"},{"text":"  Kills: ","color":"black"},{"storage":"minecraft:stats","nbt":"player_kills","color":"green","bold":true},{"text":"\n","color":"black"},{"text":"  Deaths: ","color":"black"},{"storage":"minecraft:stats","nbt":"player_deaths","color":"red","bold":true},{"text":"\n","color":"black"},{"text":"  K/D: ","color":"black"},{"storage":"minecraft:stats","nbt":"player_kd_whole","color":"gray"},{"text":".","color":"gray"},{"storage":"minecraft:stats","nbt":"player_kd_decimal","color":"gray"},{"text":"\n\n","color":"black"}]}
