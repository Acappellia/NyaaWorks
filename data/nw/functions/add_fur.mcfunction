
data remove storage nw:tmp add_fur
data modify storage nw:tmp add_fur set from entity @s SelectedItem

execute unless data storage nw:tmp add_fur.components."minecraft:container" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 请手持正确的物品执行操作","color": "gray"}]
execute unless data storage nw:tmp add_fur.components."minecraft:container" run return -1

data modify storage nw:tmp new_fur_comp set value {"minecraft:custom_name":'[{"text":"test","color":"#66ccff"}]'}










setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:soul_campfire"}]}
data modify block 0 -64 0 Items[0].components set from storage nw:tmp new_fur_comp
loot give @s mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已生成家具","color": "yellow"}]

setblock 0 -64 0 bedrock