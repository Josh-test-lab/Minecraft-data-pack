execute as @s at @s run execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @e[type=player,sort=nearest,limit=1] shoot_y_axis
particle explosion ^ ^1.6 ^ 0.001 0.001 0.01 0.1 1 force
kill @s