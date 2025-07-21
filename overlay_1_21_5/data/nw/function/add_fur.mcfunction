##copy hand item & check
data remove storage nw:tmp add_fur
data remove storage nw:tmp new_fur_display_components
data remove storage nw:tmp new_fur_item
data modify storage nw:tmp add_fur set from entity @s SelectedItem

execute unless data storage nw:tmp add_fur.components."minecraft:container" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 请手持正确的物品执行操作","color": "gray"}]
execute unless data storage nw:tmp add_fur.components."minecraft:container" run return -1



##slot 0 - name, lore, model, unbrekable
data modify storage nw:tmp new_fur_item."minecraft:custom_name" set from storage nw:tmp add_fur.components."minecraft:container"[{slot:0}].item.components."minecraft:custom_name"
data modify storage nw:tmp new_fur_item."minecraft:item_name" set from storage nw:tmp add_fur.components."minecraft:container"[{slot:0}].item.components."minecraft:item_name"
data modify storage nw:tmp new_fur_item."minecraft:custom_model_data" set from storage nw:tmp add_fur.components."minecraft:container"[{slot:0}].item.components."minecraft:custom_model_data"
data modify storage nw:tmp new_fur_item."minecraft:lore" set from storage nw:tmp add_fur.components."minecraft:container"[{slot:0}].item.components."minecraft:lore"
data modify storage nw:tmp new_fur_item."minecraft:unbreakable" set from storage nw:tmp add_fur.components."minecraft:container"[{slot:0}].item.components."minecraft:unbreakable"

##clone basic data
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".display_comp set from storage nw:tmp new_fur_item

##some basic info
data modify storage nw:tmp new_fur_item."minecraft:consumable" set value {consume_seconds:100000.0f,animation:"none",sound:{sound_id:""},has_consume_particles:false}
data modify storage nw:tmp new_fur_item."minecraft:hide_additional_tooltip" set value {}
data modify storage nw:tmp new_fur_item."minecraft:custom_data".nw_fur set value 1b

##slot 9 - furniture orientation
execute if data storage nw:tmp add_fur.components."minecraft:container"[{slot:9}].item.id run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_orient set value 1b

##slot 18 - furniture transfer target
#define score_holder #transfer_type
scoreboard players reset #transfer_type nw

execute if data storage nw:tmp add_fur.components."minecraft:container"[{slot:18}].item.count run scoreboard players set #transfer_type nw 1
execute store success score #check_success nw run data modify storage nw:tmp add_fur.components."minecraft:container"[{slot:18}].item.id set value "minecraft:clay_ball"
execute unless score #check_success nw matches 1 run scoreboard players set #transfer_type nw 2

execute if score #transfer_type nw matches 1 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_transfer_target set string storage nw:tmp add_fur.components."minecraft:container"[{slot:18}].item.components."minecraft:custom_name" 1 -1
execute if score #transfer_type nw matches 2 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_transfer_target_buildin set string storage nw:tmp add_fur.components."minecraft:container"[{slot:18}].item.components."minecraft:custom_name" 1 -1

##slot 19 - state A auto cd
#define score_holder #item_count
execute store result score #item_count nw run data get storage nw:tmp add_fur.components."minecraft:container"[{slot:19}].item.count

#define score_holder #check_success
execute store success score #check_success nw run data modify storage nw:tmp add_fur.components."minecraft:container"[{slot:19}].item.id set value "minecraft:clock"
execute if score #check_success nw matches 1 run scoreboard players operation #item_count nw *= #10 nw
execute unless score #item_count nw matches 1.. run scoreboard players set #item_count nw 1
execute store result storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto_cd int 1 run scoreboard players get #item_count nw

##slot 23 - state B auto cd
execute store result score #item_count nw run data get storage nw:tmp add_fur.components."minecraft:container"[{slot:23}].item.count

execute store success score #check_success nw run data modify storage nw:tmp add_fur.components."minecraft:container"[{slot:23}].item.id set value "minecraft:clock"
execute if score #check_success nw matches 1 run scoreboard players operation #item_count nw *= #10 nw
execute unless score #item_count nw matches 1.. run scoreboard players set #item_count nw 1
execute store result storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto_cd int 1 run scoreboard players get #item_count nw

##slot 1 - state A model
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.item_id set value "minecraft:firework_star"
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.item_id set from storage nw:tmp add_fur.components."minecraft:container"[{slot:1}].item.id

data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.model set from storage nw:tmp new_fur_item."minecraft:custom_model_data"
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.model set from storage nw:tmp add_fur.components."minecraft:container"[{slot:1}].item.components."minecraft:custom_model_data"

##slot 5 - state B model
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.item_id set value "minecraft:firework_star"
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.item_id set from storage nw:tmp add_fur.components."minecraft:container"[{slot:1}].item.id
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.item_id set from storage nw:tmp add_fur.components."minecraft:container"[{slot:5}].item.id

data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.model set from storage nw:tmp new_fur_item."minecraft:custom_model_data"
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.model set from storage nw:tmp add_fur.components."minecraft:container"[{slot:1}].item.components."minecraft:custom_model_data"
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.model set from storage nw:tmp add_fur.components."minecraft:container"[{slot:5}].item.components."minecraft:custom_model_data"

##slot 10 - state A block
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.block set from storage nw:tmp add_fur.components."minecraft:container"[{slot:10}].item.id

##slot 14 - state B block
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.block set from storage nw:tmp add_fur.components."minecraft:container"[{slot:14}].item.id

##slot 19 - state A chair/table type - removed
#scoreboard players reset #item_count nw
#execute store result score #item_count nw run data get storage nw:tmp add_fur.components."minecraft:container"[{slot:19}].item.count
#execute if score #item_count nw matches 1 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.ishalfchair set value 1
#execute if score #item_count nw matches 2 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.isfullchair set value 1
#execute if score #item_count nw matches 3 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.istable set value 1

##slot 23 - state B chair/table type - removed
#scoreboard players reset #item_count nw
#execute store result score #item_count nw run data get storage nw:tmp add_fur.components."minecraft:container"[{slot:23}].item.count
#execute if score #item_count nw matches 1 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.ishalfchair set value 1
#execute if score #item_count nw matches 2 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.isfullchair set value 1
#execute if score #item_count nw matches 3 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.istable set value 1

##slot 2,11,20,3,12,21 state A interaction
data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:2}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:11}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:20}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:3}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:12}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:21}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add

##slot 6,15,24,7,16,25 state B interaction
data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:6}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:15}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:24}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:7}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:16}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:25}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add

##slot 4,13,22 state A auto
data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:4}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:13}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:22}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto append from storage nw:tmp interation_to_add

##slot 8,17,26 state B auto
data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:8}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:17}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto append from storage nw:tmp interation_to_add

data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp add_fur.components."minecraft:container"[{slot:26}].item
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto append from storage nw:tmp interation_to_add

##check has auto
#execute if data storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto[0] run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".has_auto set value 1
#execute if data storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto[0] run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".has_auto set value 1

##check id on shulker box
data remove storage nw:tmp fur_info
execute if data storage nw:tmp add_fur.components."minecraft:custom_data".nw_fur_id run function nw:fur_add/update_fur
execute unless data storage nw:tmp add_fur.components."minecraft:custom_data".nw_fur_id run function nw:fur_add/new_fur

##give generated item
forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",count:1}]}
data modify block 1600 0 1600 Items[0].components set from storage nw:tmp new_fur_item
loot give @s mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock