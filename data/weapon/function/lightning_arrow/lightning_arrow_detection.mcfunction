execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]},nbt={inGround:0b},distance=0..1.6] run function weapon:lightning_arrow/lightning_arrow_tag
# 箭矢觸地消失
execute as @e[type=minecraft:arrow,nbt={Tags:["lightning_arrow"]}] run data merge entity @s {life:1200s}
