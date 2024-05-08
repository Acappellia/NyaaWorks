##register item
execute store result storage nw:tmp fur_info.nw_fur_id int 1 store result storage nw:tmp new_fur_item."minecraft:custom_data".nw_fur_id int 1 run scoreboard players add #fur_id nw 1
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id

##update shulker box
item modify entity @s weapon.mainhand nw:add_box_info

##append data
data modify storage nw:fur_data fur append value {}
execute store result storage nw:fur_data fur[-1].fur_id int 1 run scoreboard players get #fur_id nw
data modify storage nw:fur_data fur[-1].display_comp set from storage nw:tmp new_fur_display_components

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已创建家具 #","color": "yellow"},{"score":{"name": "#fur_id","objective": "nw"},"color": "white"}]