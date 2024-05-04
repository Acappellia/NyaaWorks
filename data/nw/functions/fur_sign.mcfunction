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

execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个物品已经带有签名了","color": "gray"}]
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id run return -1

##sign item
execute store result storage nw:tmp sign.p_id int 1 run scoreboard players get @s p_id
item modify entity @s weapon.mainhand nw:sign_name

##effect
particle wax_off ~ ~ ~ 1 1 1 0 20 normal
playsound item.book.page_turn block @a ~ ~ ~ 1 1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已为手中的木锄签名","color": "yellow"}]