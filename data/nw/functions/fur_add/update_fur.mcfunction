##get number
#define score_holder #update_fur_id
execute store result score #update_fur_id nw run data get storage nw:tmp add_fur.components."minecraft:custom_data".nw_fur_id

##add default color
data modify storage nw:tmp nw:new_fur_item."minecraft:firework_explosion" set value {shape:"small_ball",colors:[I;16777215]}

##register item
execute store result storage nw:tmp fur_info.nw_fur_id int 1 store result storage nw:tmp new_fur_item."minecraft:custom_data".nw_fur_id int 1 run scoreboard players get #update_fur_id nw
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id

##update data
function nw:fur_add/update_fur_2 with storage nw:tmp fur_info

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已更新家具 #","color": "yellow"},{"score":{"name": "#update_fur_id","objective": "nw"},"color": "white"}]