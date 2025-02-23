# 賦予射擊能力
execute as @s at @s unless score @s ak47_1_bullet matches ..31 run scoreboard players set @s ak47_1_bullet 30

execute if score @s ak47_1_bullet matches 30.. run title @s actionbar {"text":"彈藥不足","bold":true,"color":"red"}
execute if score @s ak47_1_bullet matches ..29 run function weapon:ak47_1/ak47_1_shoot
