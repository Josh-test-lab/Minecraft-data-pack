# 將附近無以下生物的箭矢設為special_arrow
execute as @e[type=minecraft:arrow,nbt=!{Tags:["special_arrow"]}] at @s unless entity @a[distance=0..1.7] unless entity @e[distance=0..1.7,type=minecraft:pillager] unless entity @e[distance=0..1.7,type=minecraft:skeleton] unless entity @e[distance=0..1.7,type=minecraft:illusioner] run data modify entity @s Tags append value "special_arrow"

# 玩家眼睛高度
execute as @a at @s run function environment:mob_eyes_hight

# 武器發射y座標
execute as @a at @s run function environment:weapon_shoot_y_axis