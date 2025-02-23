#execute as @e[type=arrow,sort=nearest,limit=1,nbt={inGround:1b,Tags:["rain_of_arrows_arrow","special_arrow"]}] store result score @s arrow_shooter run data get entity @s Shooter

summon minecraft:arrow ~-1 ~10 ~-1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~1 ~10 ~1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~ ~10 ~ {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-1 ~10 ~1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~1 ~10 ~-1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~1 ~10 ~ {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~ ~10 ~1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~ ~10 ~-1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-1 ~10 ~ {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}

summon minecraft:arrow ~-2 ~10 ~-2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~2 ~10 ~2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-2 ~10 ~2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~2 ~10 ~-2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~2 ~10 ~ {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~ ~10 ~2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~ ~10 ~-2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-2 ~10 ~ {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}

summon minecraft:arrow ~-2 ~10 ~-1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~2 ~10 ~-1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-1 ~10 ~2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~1 ~10 ~2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-2 ~10 ~1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~2 ~10 ~1 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~-1 ~10 ~-2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}
summon minecraft:arrow ~1 ~10 ~-2 {pickup:2b,life:1190,damage:13d,Tags:["special_arrow","rain_of_arrows"],CustomName:'{"text":"箭雨","color":"yellow"}'}

#execute as @e[type=arrow,tag=rain_of_arrows] at @s run data modify entity @s Owner set from entity @e[type=arrow,sort=nearest,limit=1,nbt={inGround:1b,Tags:["rain_of_arrows_arrow","special_arrow"]}] arrow_shooter

effect clear @s minecraft:unluck