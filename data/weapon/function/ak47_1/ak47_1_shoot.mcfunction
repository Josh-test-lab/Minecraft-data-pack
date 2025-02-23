scoreboard players add @s ak47_1_bullet 1
playsound custom:custom.other.ak47_1_shot record @a ~ ~ ~
particle minecraft:smoke ^ ^1.6 ^2 0 0 0 0 1 force
# 不吃效果子彈
summon minecraft:arrow ~ ~1.6 ~ {Tags:["ak47_1_arrow_bullet","special_arrow"],life:1200,Silent:1b,damage:2.2}
# 可吃效果子彈
#summon arrow ~ ~1.6 ~ {Tags:["ak47_1_arrow_bullet"],life:1200,Silent:1,damage:2.2}

# 依玩家身高修改
execute as @n[type=minecraft:arrow, tag=ak47_1_arrow_bullet] at @s run execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @e[type=player,sort=nearest,limit=1] shoot_y_axis

data modify entity @n[type=minecraft:arrow,tag=ak47_1_arrow_bullet] Owner set from entity @s UUID
execute rotated as @s positioned 0.0 0.0 0.0 run tp @n[tag=ak47_1_arrow_locate] ^ ^ ^1
# execute store result score @s ak47_1_x run data get entity @e[type=minecraft:area_effect_cloud,tag=ak47_1_arrow_locate,limit=1] Pos[0] 7000
# execute store result score @s ak47_1_y run data get entity @e[type=minecraft:area_effect_cloud,tag=ak47_1_arrow_locate,limit=1] Pos[1] 7000
# execute store result score @s ak47_1_z run data get entity @e[type=minecraft:area_effect_cloud,tag=ak47_1_arrow_locate,limit=1] Pos[2] 7000
execute store result score @s ak47_1_x run data get entity @n[type=minecraft:marker,tag=ak47_1_arrow_locate] Pos[0] 7000
execute store result score @s ak47_1_y run data get entity @n[type=minecraft:marker,tag=ak47_1_arrow_locate] Pos[1] 7000
execute store result score @s ak47_1_z run data get entity @n[type=minecraft:marker,tag=ak47_1_arrow_locate] Pos[2] 7000
execute store result entity @n[type=minecraft:arrow,tag=ak47_1_arrow_bullet] Motion[0] double 0.001 run scoreboard players get @s ak47_1_x
execute store result entity @n[type=minecraft:arrow,tag=ak47_1_arrow_bullet] Motion[1] double 0.001 run scoreboard players get @s ak47_1_y
execute store result entity @n[type=minecraft:arrow,tag=ak47_1_arrow_bullet] Motion[2] double 0.001 run scoreboard players get @s ak47_1_z