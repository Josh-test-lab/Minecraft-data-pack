execute unless score @s rocket_launcher_1_rocket_infinite_permission matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[item_name='{"color":"gold","text":"火箭彈發射器"}',lore=['[{"color":"white","italic":false,"translate":"item.minecraft.crossbow.projectile"},{"color":"white","italic":false,"text":" []"}]','{"text":" "}','{"color":"white","italic":false,"text":"正所謂「爆炸就是藝術」，又稱「火箭筒」"}','[{"color":"white","italic":false,"text":"的"},{"color":"gold","italic":false,"text":"火箭彈發射器"},{"color":"white","italic":false,"text":"讓你隨時隨地都能來一發  "}]','{"color":"white","italic":false,"text":"「Explosion」！"}','[{"color":"blue","italic":false,"text":"※請將"},{"color":"gold","italic":false,"text":"火箭彈"},{"bold":false,"color":"blue","italic":false,"text":"放置於非慣用手並使用"},{"color":"dark_red","italic":false,"keybind":"key.use"},{"color":"blue","italic":false,"text":"進行"}]','{"color":"blue","italic":false,"text":"  裝填。"}'],rarity="uncommon",damage=24,repair_cost=9999,custom_model_data=6,custom_data={rocket_launcher:2}] 1
title @s actionbar {"text":" "}
playsound minecraft:entity.generic.explode record @a ~ ~ ~ 15 1.4

# 粒子特效
summon minecraft:marker ^ ^ ^1.5 {Tags: ["rocket_launcher_1_particle"]}
execute as @n[type=minecraft:marker,tag=rocket_launcher_1_particle] at @s run function weapon:rocket_launcher_1/rocket_launcher_1_particle

# 火箭彈
summon minecraft:fireball ~ ~1.6 ~ {HasVisualFire: 0b, NoGravity: 0b, ExplosionPower: 3b, Tags: ["rocket_launcher_1_rocket"]}

# 依玩家身高修改
execute as @n[type=minecraft:fireball, tag=rocket_launcher_1_rocket] at @s run execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @e[type=player,sort=nearest,limit=1] shoot_y_axis

data modify entity @n[type=minecraft:fireball,tag=rocket_launcher_1_rocket] Owner set from entity @s UUID
data merge entity @n[type=minecraft:fireball,tag=rocket_launcher_1_rocket] {Motion:[0.0d,-0.05d,0.0d]}
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=rocket_launcher_1_rocket_locate,limit=1] ^ ^ ^1
# execute store result score @s rocket_launcher_1_x run data get entity @e[type=area_effect_cloud,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[0] 5000
# execute store result score @s rocket_launcher_1_y run data get entity @e[type=area_effect_cloud,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[1] 5000
# execute store result score @s rocket_launcher_1_z run data get entity @e[type=area_effect_cloud,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[2] 5000
execute store result score @s rocket_launcher_1_x run data get entity @e[type=minecraft:marker,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[0] 5000
execute store result score @s rocket_launcher_1_y run data get entity @e[type=minecraft:marker,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[1] 5000
execute store result score @s rocket_launcher_1_z run data get entity @e[type=minecraft:marker,tag=rocket_launcher_1_rocket_locate,limit=1] Pos[2] 5000
execute store result entity @n[type=minecraft:fireball,tag=rocket_launcher_1_rocket] Motion[0] double 0.001 run scoreboard players get @s rocket_launcher_1_x
execute store result entity @n[type=minecraft:fireball,tag=rocket_launcher_1_rocket] Motion[1] double 0.001 run scoreboard players get @s rocket_launcher_1_y
execute store result entity @n[type=minecraft:fireball,tag=rocket_launcher_1_rocket] Motion[2] double 0.001 run scoreboard players get @s rocket_launcher_1_z
