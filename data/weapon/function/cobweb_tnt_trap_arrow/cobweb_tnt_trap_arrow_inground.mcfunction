fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:cobweb replace minecraft:air
summon minecraft:tnt ~ ~5 ~ {fuse:40s}
data modify entity @n[type=minecraft:tnt] Owner set from entity @n[type=minecraft:arrow,nbt={inGround: 1b, Tags: ["cobweb_tnt_arrow", "special_arrow"]}] Owner
effect clear @s minecraft:unluck