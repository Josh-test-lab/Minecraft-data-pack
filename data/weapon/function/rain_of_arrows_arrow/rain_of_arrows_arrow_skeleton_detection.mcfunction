execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]},nbt={inGround:0b},distance=0..1.7] run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_tag
# 箭矢觸地消失
execute as @e[type=minecraft:arrow,nbt={Tags:["rain_of_arrows_arrow"]}] run data merge entity @s {life:1200s}
