execute as @a[scores={30_blocks_random_teleport_magic_paper_drop=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{Tags:["30_blocks_random_teleport_magic"]}}}},distance=..1.4] unless score @s 30_blocks_random_teleport_magic_cooldown_timer matches 1.. run function magic:30_blocks_random_teleport_magic/30_blocks_random_teleport_magic_inground
execute as @a[scores={30_blocks_random_teleport_magic_paper_drop=1..}] at @s unless score @s 30_blocks_random_teleport_magic_cooldown_timer matches ..0 if entity @e[type=item,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{Tags:["30_blocks_random_teleport_magic"]}}}},distance=..1.4] run function magic:30_blocks_random_teleport_magic/30_blocks_random_teleport_magic_cooldown
scoreboard players reset @a[scores={30_blocks_random_teleport_magic_paper_drop=1..}] 30_blocks_random_teleport_magic_paper_drop

# 冷卻時間減少
scoreboard players remove @a[scores={30_blocks_random_teleport_magic_cooldown_timer=1..}] 30_blocks_random_teleport_magic_cooldown_timer 1
