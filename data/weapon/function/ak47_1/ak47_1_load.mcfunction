# kill @e[type=area_effect_cloud,tag=ak47_1_arrow_locate]
kill @e[type=minecraft:marker,tag=ak47_1_arrow_locate]

# summon area_effect_cloud 0.0 0.0 0.0 {Tags:["ak47_1_arrow_locate"],Duration:2147483647}
summon minecraft:marker 0.0 0.0 0.0 {Tags:["ak47_1_arrow_locate"]}

scoreboard objectives add ak47_1_rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ak47_1_bullet dummy
scoreboard objectives add ak47_1_x dummy
scoreboard objectives add ak47_1_y dummy
scoreboard objectives add ak47_1_z dummy