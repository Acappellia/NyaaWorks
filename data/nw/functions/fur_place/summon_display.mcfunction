##get components
data remove storage nw:tmp fur_comp
$data modify storage nw:tmp fur_comp set from storage nw:fur_data fur[$(nw_fur_id)].display_comp

##set item
data modify entity @s item set value {count:1,id:"minecraft:soul_campfire"}
data modify entity @s item.id set from storage nw:tmp fur_comp."minecraft:custom_data".state_a.item_id
#data modify entity @s item.components set from storage nw:tmp fur_comp
data modify entity @s item.components."minecraft:custom_model_data" set from storage nw:tmp fur_comp."minecraft:custom_data".state_a.model
data modify entity @s item.components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id
data modify entity @s item.components."minecraft:dyed_color" set from storage nw:tmp fur_info.nw_fur_color

##set rotation
execute if score #player_rotation nw matches -44..45 run data modify entity @s Rotation[0] set value 0.0f
execute if score #player_rotation nw matches 46..135 run data modify entity @s Rotation[0] set value 90.f
execute if score #player_rotation nw matches 136.. run data modify entity @s Rotation[0] set value 180.0f
execute if score #player_rotation nw matches ..-135 run data modify entity @s Rotation[0] set value -180.0f
execute if score #player_rotation nw matches -134..-45 run data modify entity @s Rotation[0] set value -90.0f

##move half block up
data modify entity @s transformation set value [2,0,0,0,0,2,0,1,0,0,2,0,0,0,0,2]

##add tag
tag @s add nw_display