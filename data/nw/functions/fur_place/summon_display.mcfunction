##get components
data remove storage nw:tmp fur_comp
$data modify storage nw:tmp fur_comp set from storage nw:fur_data fur[$(nw_fur_id)].display_comp

##set item
data modify entity @s item set value {count:1,id:"minecraft:firework_star"}
data modify entity @s item.id set from storage nw:tmp fur_comp."minecraft:custom_data".state_a.item_id
#data modify entity @s item.components set from storage nw:tmp fur_comp
data modify entity @s item.components."minecraft:custom_model_data" set from storage nw:tmp fur_comp."minecraft:custom_data".state_a.model
data modify entity @s item.components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id
data modify entity @s item.components."minecraft:firework_explosion" set from storage nw:tmp fur_info.nw_fur_color

##set rotation
execute unless data storage nw:tmp fur_info.nw_fur_orient run function nw:fur_place/orient_4
execute if data storage nw:tmp fur_info.nw_fur_orient run function nw:fur_place/orient_16

##move half block up
data modify entity @s transformation set value [2,0,0,0,0,2,0,1,0,0,2,0,0,0,0,2]

##add tag
tag @s add nw_display