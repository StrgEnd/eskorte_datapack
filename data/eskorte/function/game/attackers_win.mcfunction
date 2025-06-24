# Attackers gewinnen
title @a title {"text":"ATTACKERS GEWINNEN!","color":"red","bold":true}
title @a subtitle {"text":"Die Lore hat das Ziel erreicht!","color":"gold"}
tellraw @a {"text":"=== ATTACKERS HABEN GEWONNEN! ===","color":"red","bold":true}
execute at @e[type=armor_stand,tag=escort_end] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]}]}}}}
playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1
function eskorte:game/stop