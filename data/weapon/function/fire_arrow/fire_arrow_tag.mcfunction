data modify entity @s Tags append value "fire_arrow"
data modify entity @s Tags append value "special_arrow"
# 火焰效果
data merge entity @n[type=minecraft:arrow] {Fire:2000}
data merge entity @s {item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:unluck",amplifier:105b,duration:100,show_particles:0b}]}}}}