# 武器發射y座標
execute store result score @s shoot_y_axis run data get entity @s Pos[1] 10000
scoreboard players operation @s shoot_y_axis += @s scale