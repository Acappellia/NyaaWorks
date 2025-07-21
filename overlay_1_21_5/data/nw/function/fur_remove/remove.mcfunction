playsound block.stone.break block @a ~ ~ ~ 1 1

data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_id int 1 run scoreboard players get @s fur_id

##clone data
function nw:fur_remove/clone_data with storage nw:tmp fur_info

data remove storage nw:tmp new_fur_comp
data modify storage nw:tmp new_fur_comp set from storage nw:tmp fur_comp."minecraft:custom_data".display_comp
data modify storage nw:tmp new_fur_comp."minecraft:consumable" set value {consume_seconds:100000.0f,animation:"none",sound:{sound_id:""},has_consume_particles:false}
data modify storage nw:tmp new_fur_comp."minecraft:tooltip_display" set value {"hidden_components": ["fireworks", "firework_explosion"]}
data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur set value 1b

##set id & color
#data modify storage nw:tmp new_fur_comp."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id
data modify storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_id set from storage nw:tmp fur_info.nw_fur_id

##set color
data modify storage nw:tmp new_fur_comp."minecraft:firework_explosion" set from entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:firework_explosion"
#data modify storage nw:tmp new_fur_comp."minecraft:container"[{slot:0}].item.components."minecraft:custom_data".nw_fur_color set from storage nw:tmp new_fur_comp."minecraft:custom_data".nw_fur_color

data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp new_fur_comp."minecraft:firework_explosion"

##check dyed color
#define score_holder #dyed_color
scoreboard players reset #dyed_color nw
execute store result score #dyed_color nw run data get storage nw:tmp fur_info.nw_fur_color.colors[0]

##giveback item
forceload add 1600 1600
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