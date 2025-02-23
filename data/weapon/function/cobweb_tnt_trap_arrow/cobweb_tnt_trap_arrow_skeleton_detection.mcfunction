execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]},nbt={inGround:0b},distance=0..1.7] run function weapon:tnt_arrow/tnt_arrow_tag
# 箭矢觸地消失
execute as @e[type=minecraft:arrow,nbt={Tags:["tnt_arrow"]}] run data merge entity @s {life:1200s}
