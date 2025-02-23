forceload add -1 -1 0 0
scoreboard objectives add arrow_shooter dummy
tellraw @a[name="Yushasama"] {"text":"Secret World 資料包 已啟用"}
tellraw @a[gamemode=creative] {"text":"秘界資料包 已啟用，由 Yushasama 製作，使用前請先徵求作者同意"}

# 玩家 scale (身高)
scoreboard objectives add scale dummy
# 玩家眼睛高度
scoreboard objectives add scale_eyes_operator dummy
# 玩家眼睛高度 = 2(身高) * 0.8 
# 16 / 10 = 玩家眼睛高度
scoreboard players set Yushasama scale_eyes_operator 16 

# 武器發射y座標
scoreboard objectives add shoot_y_axis dummy