execute if score #player_rotation nw matches -44..45 run data modify entity @s Rotation[0] set value 0.0f
execute if score #player_rotation nw matches 46..135 run data modify entity @s Rotation[0] set value 90.f
execute if score #player_rotation nw matches 136.. run data modify entity @s Rotation[0] set value 180.0f
execute if score #player_rotation nw matches ..-135 run data modify entity @s Rotation[0] set value -180.0f
execute if score #player_rotation nw matches -134..-45 run data modify entity @s Rotation[0] set value -90.0f