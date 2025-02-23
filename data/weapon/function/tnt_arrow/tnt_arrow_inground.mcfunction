summon minecraft:tnt ~ ~ ~ {CustomName:'{"text":"TNT","color":"yellow"}'}
data modify entity @n[type=minecraft:tnt] Owner set from entity @n[type=minecraft:arrow,nbt={inGround: 1b, Tags: ["tnt_arrow", "special_arrow"]}] Owner
effect clear @s minecraft:unluck