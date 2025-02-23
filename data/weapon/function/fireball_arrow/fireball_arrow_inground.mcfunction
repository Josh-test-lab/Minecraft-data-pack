summon minecraft:fireball ^ ^0.2 ^ {Motion: [0.0d, -5.0d, 0.0d], ExplosionPower: 2, CustomName: '{"text":"火球","color":"yellow","italic":false}'}
data modify entity @n[type=minecraft:fireball] Owner set from entity @n[type=minecraft:arrow,nbt={inGround: 1b, Tags: ["fireball_arrow", "special_arrow"]}] Owner
effect clear @s minecraft:unluck