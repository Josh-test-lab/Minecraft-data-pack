# 有權限玩家執行
execute if items entity @s[scores={loudspeaker_1_permission=1}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4,minecraft:custom_data={loudspeaker:1}] positioned ~ ~ ~ run playsound custom:custom.other.responsibility_louder master @a[distance=..10] ~ ~ ~ 4
# 無權限玩家執行
execute if items entity @s[gamemode=creative] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4,minecraft:custom_data={loudspeaker:1}] unless score @s loudspeaker_1_permission matches 1 run function loudspeaker:loudspeaker_1_responsibility_louder/loudspeaker_1_no_permission
# 重置點擊
scoreboard players reset @s loudspeaker_1_rightclick
