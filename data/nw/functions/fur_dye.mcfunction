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

##set durability
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.offhand nw:brush_damage_1
execute if predicate nw:offhand_no_damage at @s run playsound entity.item.break player @a ~ ~ ~
execute if predicate nw:offhand_no_damage run item modify entity @s weapon.offhand nw:remove_1

##check dyed color
#define score_holder #dyed_color
scoreboard players reset #dyed_color nw
execute store result score #dyed_color nw run data get storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0]

##add hand lore
execute if score #dyed_color nw matches 16777215 run item modify entity @s weapon.mainhand nw:add_color_lore
execute if score #dyed_color nw matches 0 run item modify entity @s weapon.mainhand nw:add_color_lore

##copy color
data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp offhand.components."minecraft:firework_explosion"
function nw:fur_dye/copy_color with storage nw:tmp fur_info

##effect
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 0.6 0.6 0.6 0 30 normal
playsound minecraft:item.brush.brushing.generic block @a ~ ~ ~ 1 1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 成功应用染色","color": "yellow"}]