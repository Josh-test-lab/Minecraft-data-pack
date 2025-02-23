# 箭矢爆炸
execute as @e[type=minecraft:arrow,nbt={inGround:1b,Tags:["rain_of_arrows_arrow","special_arrow"]}] at @s run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_inground
# 將附近無以下生物的箭矢設為special_arrow # 已移至environment_tick.mcfunction做統一偵測
# execute as @e[type=arrow,nbt=!{Tags:["special_arrow"]}] at @s unless entity @a[distance=0..1.7] unless entity @e[distance=0..1.7,type=pillager] unless entity @e[distance=0..1.7,type=skeleton] unless entity @e[distance=0..1.7,type=illusioner] run data modify entity @s Tags append value "special_arrow"
# 玩家副手偵測
execute at @a[nbt=!{SelectedItem:{id:"minecraft:bow",components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow",components:{"minecraft:custom_data":{Tags:["rain_of_arrows_arrow"]}}}]}] run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_detection
# 玩家弩偵測
#execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:arrow",tag:{Tags:["rain_of_arrows_arrow"]}}]}}}] run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_detection
# 骷髏
execute as @e[type=minecraft:skeleton,nbt={HandItems:[{id:"minecraft:arrow",components:{"minecraft:custom_data":{Tags:["rain_of_arrows_arrow"]}}}]}] at @s run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_skeleton_detection
# 掠奪者
execute as @e[type=minecraft:pillager,nbt={HandItems:[{id:"minecraft:arrow",components:{"minecraft:custom_data":{Tags:["rain_of_arrows_arrow"]}}}]}] at @s run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_detection
# 幻術師
execute as @e[type=minecraft:illusioner,nbt={HandItems:[{id:"minecraft:arrow",components:{"minecraft:custom_data":{Tags:["rain_of_arrows_arrow"]}}}]}] at @s run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_detection
# 命中實體
execute as @e[nbt={active_effects:[{id:"minecraft:unluck",amplifier:102b}]}] at @s run function weapon:rain_of_arrows_arrow/rain_of_arrows_arrow_inground