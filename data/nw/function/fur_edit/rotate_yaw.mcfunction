execute unless score #player_is_sneaking nw matches 1 run scoreboard players add @s fur_rotation 1
execute if score #player_is_sneaking nw matches 1 run scoreboard players remove @s fur_rotation 1
execute if score @s fur_rotation matches 16.. run scoreboard players set @s fur_rotation 0
execute if score @s fur_rotation matches ..-1 run scoreboard players set @s fur_rotation 15


execute if score @s fur_rotation matches 0 run data modify entity @s transformation.left_rotation set value [0.0f, 1.0f, 0.0f, 0.0f]
execute if score @s fur_rotation matches 1 run data modify entity @s transformation.left_rotation set value [0.0f, 0.9807853f, -0.1950903f, 0.0f]
execute if score @s fur_rotation matches 2 run data modify entity @s transformation.left_rotation set value [0.0f, 0.9238795f, -0.3826834f, 0.0f]
execute if score @s fur_rotation matches 3 run data modify entity @s transformation.left_rotation set value [0.0f, 0.8314696f, -0.5555702f, 0.0f]
execute if score @s fur_rotation matches 4 run data modify entity @s transformation.left_rotation set value [0.0f, 0.7071068f, -0.7071068f, 0.0f]
execute if score @s fur_rotation matches 5 run data modify entity @s transformation.left_rotation set value [0.0f, 0.5555702f, -0.8314696f, 0.0f]
execute if score @s fur_rotation matches 6 run data modify entity @s transformation.left_rotation set value [0.0f, 0.3826834f, -0.9238795f, 0.0f]
execute if score @s fur_rotation matches 7 run data modify entity @s transformation.left_rotation set value [0.0f, 0.1950903f, -0.9807853f, 0.0f]
execute if score @s fur_rotation matches 8 run data modify entity @s transformation.left_rotation set value [0.0f, 0.0f, -1.0f, 0.0f]
execute if score @s fur_rotation matches 9 run data modify entity @s transformation.left_rotation set value [0.0f, 0.1950903f, 0.9807853f, 0.0f]
execute if score @s fur_rotation matches 10 run data modify entity @s transformation.left_rotation set value [0.0f, 0.3826834f, 0.9238795f, 0.0f]
execute if score @s fur_rotation matches 11 run data modify entity @s transformation.left_rotation set value [0.0f, 0.5555702f, 0.8314696f, 0.0f]
execute if score @s fur_rotation matches 12 run data modify entity @s transformation.left_rotation set value [0.0f, 0.7071068f, 0.7071068f, 0.0f]
execute if score @s fur_rotation matches 13 run data modify entity @s transformation.left_rotation set value [0.0f, 0.8314696f, 0.5555702f, 0.0f]
execute if score @s fur_rotation matches 14 run data modify entity @s transformation.left_rotation set value [0.0f, 0.9238795f, 0.3826834f, 0.0f]
execute if score @s fur_rotation matches 15 run data modify entity @s transformation.left_rotation set value [0.0f, 0.9807853f, 0.1950903f, 0.0f]


playsound entity.item_frame.rotate_item block @a ~ ~ ~ 1 1