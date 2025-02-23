scoreboard players set @s ak47_1_bullet 0
execute as @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={magazine_ak47_1:1},minecraft:custom_model_data=3] run item replace entity @s weapon.mainhand with air 1
scoreboard players reset @s magazine_ak47_1_rightclick