playsound block.stone.break block @a ~ ~ ~ 1 1

data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_id_buildin int 1 run scoreboard players get @s fur_id_buildin

##clone data
function nw:fur_remove/clone_data_buildin with storage nw:tmp fur_info

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
data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_id_buildin set from storage nw:tmp fur_info.nw_fur_id_buildin

##set color
data modify storage nw:tmp new_fur_comp."minecraft:firework_explosion" set from entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:firework_explosion"
#data modify storage nw:tmp new_fur_comp."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_color set from storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_color

data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp new_fur_comp."minecraft:firework_explosion"

##check dyed color
#define score_holder #dyed_color
scoreboard players reset #dyed_color nw
execute store result score #dyed_color nw run data get storage nw:tmp fur_info.nw_fur_color.colors[0]

##giveback item
forceload add 100 100
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 1600 0 1600 Items[0].components set from storage nw:tmp new_fur_comp
execute unless score #dyed_color nw matches 16777215 unless score #dyed_color nw matches 0 run item modify block 1600 0 1600 container.0 nw:add_color_lore
loot spawn ~ ~ ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock

##kill
kill @n[type=item_display,tag=nw_display,distance=..0.5]
execute positioned ~ ~0.65 ~ run kill @e[type=item_display,tag=nw_chair,distance=..0.3,sort=nearest]
kill @s

##setblock
execute if block ~ ~ ~ #nw:waterloggable[waterlogged=true] run setblock ~ ~ ~ water
execute unless block ~ ~ ~ water run setblock ~ ~ ~ air