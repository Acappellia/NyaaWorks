##copy data
data remove storage nw:tmp mainhand
data remove storage nw:tmp offhand

data modify storage nw:tmp mainhand set from entity @s SelectedItem
data modify storage nw:tmp offhand set from entity @s Inventory[{Slot:-106b}]

##check hands
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "请将 任意家具 放置在主手","color": "gray"}]
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur run return -1

execute unless data storage nw:tmp offhand.components."minecraft:custom_data".nw_dye run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "请将 颜料刷 放置在副手","color": "gray"}]
execute unless data storage nw:tmp offhand.components."minecraft:custom_data".nw_dye run return -1

##remove item
item modify entity @s weapon.mainhand nw:remove_1
item modify entity @s weapon.offhand nw:brush_damage_1

##check dyed color
#define score_holder #dyed_color
scoreboard players reset #dyed_color nw
execute store result score #dyed_color nw run data get storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0]

##change color
execute unless score #dyed_color nw matches 16777215 run data remove storage nw:tmp mainhand.components."minecraft:lore"[-1]

data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp offhand.components."minecraft:firework_explosion"

data modify storage nw:tmp mainhand.components."minecraft:firework_explosion" set from storage nw:tmp fur_info.nw_fur_color
#data modify storage nw:tmp mainhand.components."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_color set from storage nw:tmp fur_info.nw_fur_color

##giveback item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 0 -64 0 Items[0].components set from storage nw:tmp mainhand.components
execute if data storage nw:tmp fur_info.nw_fur_color run item modify block 0 -64 0 container.0 nw:add_color_lore
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##effect
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 0.6 0.6 0.6 0 30 normal
playsound minecraft:item.brush.brushing.generic block @a ~ ~ ~ 1 1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 成功应用染色","color": "yellow"}]