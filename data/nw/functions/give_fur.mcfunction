data remove storage nw:tmp fur_comp
$data modify storage nw:tmp fur_comp set from storage nw:fur_data fur[$(nw_fur_id)].display_comp

data remove storage nw:tmp new_fur_comp
data modify storage nw:tmp new_fur_comp set from storage nw:tmp fur_comp."minecraft:custom_data".display_comp
data modify storage nw:tmp new_fur_comp."minecraft:food" set value {nutrition:0,saturation:0,eat_seconds:1000000.0,can_always_eat:true}
data modify storage nw:tmp new_fur_comp."minecraft:hide_additional_tooltip" set value {}
data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur set value 1b

#data modify storage nw:tmp new_fur_comp."minecraft:container" append value {slot:0,item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{nw_data:1},"minecraft:custom_name":'{"text":"掉出来的木棍","color":"white","italic":false}',"minecraft:lore":['{"text":"因为没有小心摆放，家具散架了","color":"gray","italic":false}','{"text":"大概是修不好了，但兴许能吃？","color":"gray","italic":false}'],"minecraft:food":{saturation:0.0f,nutrition:5,can_always_eat:true,eat_seconds:8}}}}
#data modify storage nw:tmp new_fur_comp."minecraft:container" append value {slot:1,item:{id:"minecraft:oak_pressure_plate",count:1,components:{"minecraft:custom_data":{nw_data:1},"minecraft:custom_name":'{"text":"掉出来的木板","color":"white","italic":false}',"minecraft:lore":['{"text":"因为没有小心摆放，家具散架了","color":"gray","italic":false}','{"text":"大概是修不好了，但应该能吃！","color":"gray","italic":false}'],"minecraft:food":{saturation:0.0f,nutrition:5,can_always_eat:true,eat_seconds:12}}}}
#data modify storage nw:tmp new_fur_comp."minecraft:container" append value {slot:2,item:{id:"minecraft:oak_button",count:1,components:{"minecraft:custom_data":{nw_data:1},"minecraft:custom_name":'{"text":"掉出来的木块","color":"white","italic":false}',"minecraft:lore":['{"text":"因为没有小心摆放，家具散架了","color":"gray","italic":false}','{"text":"大概是修不好了，但没准能吃？","color":"gray","italic":false}'],"minecraft:food":{saturation:0.0f,nutrition:5,can_always_eat:true,eat_seconds:4}}}}
#data modify storage nw:tmp new_fur_comp."minecraft:container" append value {slot:3,item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_data":{nw_data:1},"minecraft:custom_name":'{"text":"掉出来的木牌","color":"white","italic":false}',"minecraft:lore":['{"text":"因为没有小心摆放，家具散架了","color":"gray","italic":false}','{"text":"大概是修不好了，但一定能吃！","color":"gray","italic":false}'],"minecraft:food":{saturation:0.0f,nutrition:5,can_always_eat:true,eat_seconds:16}}}}
#data modify storage nw:tmp new_fur_comp."minecraft:block_state" set value {lit:"true"}

##set id & color
#data modify storage nw:tmp new_fur_comp."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id
$data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_id set value $(nw_fur_id)

##add default color
data modify storage nw:tmp new_fur_comp."minecraft:firework_explosion" set value {shape:"small_ball",colors:[I;16777215]}

##giveback item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 0 -64 0 Items[0].components set from storage nw:tmp new_fur_comp
loot spawn ~ ~ ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

$tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已获取家具 #","color": "yellow"},{"text":"$(nw_fur_id)","color": "white"}]