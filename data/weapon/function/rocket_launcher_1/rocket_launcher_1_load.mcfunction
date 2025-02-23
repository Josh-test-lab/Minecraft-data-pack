# kill @e[type=area_effect_cloud,tag=rocket_launcher_1_rocket_locate]
kill @e[type=minecraft:marker,tag=rocket_launcher_1_rocket_locate]
# summon area_effect_cloud 0.0 0.0 0.0 {Tags:["rocket_launcher_1_rocket_locate"],Duration:2147483647}
summon minecraft:marker 0.0 0.0 0.0 {Tags:["rocket_launcher_1_rocket_locate"]}
scoreboard objectives add rocket_launcher_1_rightclick minecraft.used:minecraft.carrot_on_a_stick
# 設置可無限發射使用權記分板
scoreboard objectives add rocket_launcher_1_rocket_infinite_permission dummy
# 火箭彈發射方向
scoreboard objectives add rocket_launcher_1_x dummy
scoreboard objectives add rocket_launcher_1_y dummy
scoreboard objectives add rocket_launcher_1_z dummy