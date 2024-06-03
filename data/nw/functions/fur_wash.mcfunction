##copy data
data remove storage nw:tmp mainhand

data modify storage nw:tmp mainhand set from entity @s SelectedItem

##check hands
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_id run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "请将 任意染色后家具 放置在主手","color": "gray"}]
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_id run return -1

execute unless data storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0] run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个家具没有被染色呢","color": "gray"}]
execute unless data storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0] run return -1


##remove item
item modify entity @s weapon.mainhand nw:remove_1

##clear color
data remove storage nw:tmp mainhand.components."minecraft:lore"[-1]

data modify storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0] set value 16777215
#data remove storage nw:tmp mainhand.components."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_color

##giveback item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 0 -64 0 Items[0].components set from storage nw:tmp mainhand.components
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##effect
particle splash ~ ~ ~ 0.5 0.5 0.5 0 30 normal
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron block @a ~ ~ ~ 1 1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 成功清除家具上的染色","color": "yellow"}]