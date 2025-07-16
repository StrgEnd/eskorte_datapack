# Partikel in verschiedenen Höhen für eine 3D-Kugel mit Radius 6
# Obere Hälfte der Kugel
execute positioned ~ ~6 ~ run function eskorte:particles/circle_radius_0
execute positioned ~ ~5.5 ~ run function eskorte:particles/circle_radius_2
execute positioned ~ ~5 ~ run function eskorte:particles/circle_radius_3
execute positioned ~ ~4.5 ~ run function eskorte:particles/circle_radius_4
execute positioned ~ ~4 ~ run function eskorte:particles/circle_radius_4_5
execute positioned ~ ~3.5 ~ run function eskorte:particles/circle_radius_5
execute positioned ~ ~3 ~ run function eskorte:particles/circle_radius_5_2
execute positioned ~ ~2.5 ~ run function eskorte:particles/circle_radius_5_5
execute positioned ~ ~2 ~ run function eskorte:particles/circle_radius_5_7
execute positioned ~ ~1.5 ~ run function eskorte:particles/circle_radius_5_8
execute positioned ~ ~1 ~ run function eskorte:particles/circle_radius_5_9
execute positioned ~ ~0.5 ~ run function eskorte:particles/circle_radius_6

# Mittlere Ebene
execute positioned ~ ~ ~ run function eskorte:particles/circle_radius_6

# Untere Hälfte der Kugel (spiegle die obere Hälfte)
execute positioned ~ ~-0.5 ~ run function eskorte:particles/circle_radius_6
execute positioned ~ ~-1 ~ run function eskorte:particles/circle_radius_5_9
execute positioned ~ ~-1.5 ~ run function eskorte:particles/circle_radius_5_8
execute positioned ~ ~-2 ~ run function eskorte:particles/circle_radius_5_7
execute positioned ~ ~-2.5 ~ run function eskorte:particles/circle_radius_5_5
execute positioned ~ ~-3 ~ run function eskorte:particles/circle_radius_5_2
execute positioned ~ ~-3.5 ~ run function eskorte:particles/circle_radius_5
execute positioned ~ ~-4 ~ run function eskorte:particles/circle_radius_4_5
execute positioned ~ ~-4.5 ~ run function eskorte:particles/circle_radius_4
execute positioned ~ ~-5 ~ run function eskorte:particles/circle_radius_3
execute positioned ~ ~-5.5 ~ run function eskorte:particles/circle_radius_2
execute positioned ~ ~-6 ~ run function eskorte:particles/circle_radius_0