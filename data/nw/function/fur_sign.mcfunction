##copy data
data remove storage nw:tmp mainhand

data modify storage nw:tmp mainhand set from entity @s SelectedItem

##check hands
scoreboard players set #check_tool nw 0
execute store success score #check_tool nw run data modify storage nw:tmp mainhand.id set value "minecraft:wooden_hoe"
execute if score #check_tool nw matches 1 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "请将 木锄 放置在主手","color": "gray"}]
execute if score #check_tool nw matches 1 run return -1

execute if data storage nw:tmp mainhand.components."minecraft:custom_data".ng_item run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个物品无法签名","color": "gray"}]
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".ng_item run return -1
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".ng_slots run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个物品无法签名","color": "gray"}]
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".ng_slots run return -1

#execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个物品已经带有签名了","color": "gray"}]
#execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id run return -1

##check signed names
#define score_holder #tool_id_index
#define score_holder #tool_dupe
data remove storage nw:tmp sign
execute store result storage nw:tmp sign.index int 1 run scoreboard players set #tool_id_index nw 0
scoreboard players reset #tool_dupe nw
data remove storage nw:tmp check_tool_id
data modify storage nw:tmp check_tool_id set from storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id
execute if data storage nw:tmp check_tool_id[0] run function nw:fur_sign/check_toolid_loop

execute if score #tool_dupe nw matches 1 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "已更新信任签名的有效期。","color": "white"}]
execute unless score #tool_dupe nw matches 1 run function nw:fur_sign/adddata

item modify entity @s weapon.mainhand nw:remove_1

##giveback item
forceload add 0 0
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:wooden_hoe",count:1}]}
data modify block 0 -64 0 Items[0].components set from storage nw:tmp mainhand.components
execute unless score #tool_dupe nw matches 1 run item modify block 0 -64 0 container.0 nw:sign_name
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##effect
particle wax_off ~ ~ ~ 1 1 1 0 20 normal
playsound item.book.page_turn block @a ~ ~ ~ 1 1

execute if score #tool_dupe nw matches 1 run return 1
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已为木锄添加信任签名，有效期为 6 小时。","color": "yellow"}]
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 注意：请谨慎发放带有信任签名的木锄。","color": "gold"}]