execute as @a at @s run execute if score @s main_city_music_timeout matches 1.. run scoreboard players remove @s main_city_music_timeout 1
execute as @a at @s run execute if score @s main_city_music_timeout matches 1.. run stopsound @s music
execute as @a at @s run execute if score @s main_city_music_timeout matches ..0 at @s run scoreboard players set @s main_city_music 0
schedule function music:main_city/main_city_timeout 1s