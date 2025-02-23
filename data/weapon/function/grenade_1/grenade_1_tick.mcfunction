execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_model_data":1,"minecraft:custom_data":{Tags:["grenade_1"]}}}}] at @s run kill @e[type=minecraft:marker,tag=grenade_1_marker,distance=..3]
execute as @e[type=minecraft:marker,tag=grenade_1_marker] at @s run function weapon:grenade_1/grenade_1_explode
execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_model_data":1,"minecraft:custom_data":{Tags:["grenade_1"]}}}}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["grenade_1_marker"]}
