kill @e[type=item,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{Tags:["30_blocks_random_teleport_magic"]}}}}]
execute as @s at @a[distance=..30,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s 30_blocks_random_teleport_magic_have_nearby 1
execute if score @s 30_blocks_random_teleport_magic_have_nearby matches 2.. as @s run function magic:30_blocks_random_teleport_magic/30_blocks_random_teleport_magic_have_nearby
execute if score @s 30_blocks_random_teleport_magic_have_nearby matches ..1 as @s run function magic:30_blocks_random_teleport_magic/30_blocks_random_teleport_magic_no_nearby
scoreboard players set @s 30_blocks_random_teleport_magic_have_nearby 0

# 0.5秒後執行  Age:20s -> 1秒 (20 tick = 1 second)
#execute as @e[type=item,nbt={OnGround:1b,Age:10s,Item:{id:"minecraft:paper",Count:1b,tag:{Tags:["30_blocks_random_teleport_magic"]}}}] at @s run function magic:30_blocks_random_teleport_magic/30_blocks_random_teleport_magic_inground