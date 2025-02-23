execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]},nbt={inGround:0b},distance=0..1.6] run function weapon:cobweb_tnt_trap_arrow/cobweb_tnt_trap_arrow_tag
# 箭矢觸地消失
execute as @e[type=minecraft:arrow,nbt={Tags:["cobweb_tnt_trap_arrow"]}] run data merge entity @s {life:1200s}
