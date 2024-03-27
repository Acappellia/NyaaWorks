##set item
data modify entity @s item set value {count:1,id:"minecraft:soul_campfire"}
data modify entity @s item.components set from storage nw:tmp fur_comp
data modify entity @s item.components."minecraft:custom_model_data" set from storage nw:tmp fur_comp."minecraft:custom_data".state_a.model

##set rotation
execute if score #player_rotation nw matches -44..45 run data modify entity @s Rotation[0] set value 0.0f
execute if score #player_rotation nw matches 46..135 run data modify entity @s Rotation[0] set value 90.f
execute if score #player_rotation nw matches 136.. run data modify entity @s Rotation[0] set value 180.0f
execute if score #player_rotation nw matches ..-135 run data modify entity @s Rotation[0] set value -180.0f
execute if score #player_rotation nw matches -134..-45 run data modify entity @s Rotation[0] set value -90.0f

##add tag
tag @s add nw_display