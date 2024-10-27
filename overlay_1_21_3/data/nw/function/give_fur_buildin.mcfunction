data remove storage nw:tmp fur_comp
$data modify storage nw:tmp fur_comp set from storage nw:fur_data_buildin fur[$(id)].display_comp

data remove storage nw:tmp new_fur_comp
data modify storage nw:tmp new_fur_comp set from storage nw:tmp fur_comp."minecraft:custom_data".display_comp
data modify storage nw:tmp new_fur_comp."minecraft:consumable" set value {consume_seconds:100000.0f,animation:"none",sound:{sound_id:""},has_consume_particles:false}
data modify storage nw:tmp new_fur_comp."minecraft:hide_additional_tooltip" set value {}
data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur set value 1b

##set id & color
#data modify storage nw:tmp new_fur_comp."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id
$data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_id_buildin set value $(id)

##set salvage(buildin only)
execute if data storage nw:tmp fur_comp."minecraft:custom_data".nw_salvage run data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_salvage set value 1b

##add default color
data modify storage nw:tmp new_fur_comp."minecraft:firework_explosion" set value {shape:"small_ball",colors:[I;16777215]}

##giveback item
forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 1600 0 1600 Items[0].components set from storage nw:tmp new_fur_comp
loot spawn ~ ~ ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock

$tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已获取内置家具 #","color": "yellow"},{"text":"$(id)","color": "white"}]