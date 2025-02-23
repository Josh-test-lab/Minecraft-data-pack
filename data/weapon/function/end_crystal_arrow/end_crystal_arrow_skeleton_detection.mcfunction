execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]},nbt={inGround:0b},distance=0..1.7] run function weapon:end_crystal_arrow/end_crystal_arrow_tag
# 箭矢觸地消失
execute as @e[type=minecraft:arrow,nbt={Tags:["end_crystal_arrow"]}] run data merge entity @s {life:1200s}
