##copy data
data remove storage nw:tmp mainhand

data modify storage nw:tmp mainhand set from entity @s SelectedItem

##check hands
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "请将 任意染色后家具 放置在主手","color": "gray"}]
execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur run return -1

execute unless data storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0] run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个家具没有被染色呢","color": "gray"}]
execute unless data storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0] run return -1

scoreboard players reset #dyed_color nw
execute store result score #dyed_color nw run data get storage nw:tmp mainhand.components."minecraft:firework_explosion".colors[0]

execute if score #dyed_color nw matches 16777215 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "这个家具没有被染色呢","color": "gray"}]
execute if score #dyed_color nw matches 16777215 run return -1

##clear color
item modify entity @s weapon.mainhand nw:reset_color

##remove lore
data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.lore set from storage nw:tmp mainhand.components."minecraft:lore"
data remove storage nw:tmp fur_info.lore[-1]
item modify entity @s weapon.mainhand {function: "minecraft:set_components", components: {"minecraft:lore": []}}
execute if data storage nw:tmp fur_info.lore[0] run function nw:fur_dye/remove_last_lore with storage nw:tmp fur_info

##effect
particle splash ~ ~ ~ 0.5 0.5 0.5 0 30 normal
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron block @a ~ ~ ~ 1 1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 成功清除家具上的染色","color": "yellow"}]