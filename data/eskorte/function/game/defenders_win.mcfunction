# Defenders gewinnen
title @a title {"text":"DEFENDERS GEWINNEN!","color":"blue","bold":true}
title @a subtitle {"text":"Die Zeit ist abgelaufen!","color":"gold"}

tellraw @a {"text":"=== DEFENDERS HABEN GEWONNEN! ===","color":"blue","bold":true}

execute at @e[type=minecart,tag=escort_cart] run summon firework_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;255]}]}}}}
playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1

function eskorte:game/stop