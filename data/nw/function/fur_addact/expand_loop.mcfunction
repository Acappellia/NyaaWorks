## add like normal slots
data remove storage nw:tmp interation_item
data remove storage nw:tmp interation_to_add
data modify storage nw:tmp interation_item set from storage nw:tmp interation_item_expand[0].item
data remove storage nw:tmp interation_item_expand[0]
execute if data storage nw:tmp interation_item run function nw:fur_add/fur_add_interaction

## check where to add
execute if score #act_adding_state nw matches 1 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.interaction append from storage nw:tmp interation_to_add
execute if score #act_adding_state nw matches 2 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.interaction append from storage nw:tmp interation_to_add
execute if score #act_adding_state nw matches 3 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_a.auto append from storage nw:tmp interation_to_add
execute if score #act_adding_state nw matches 4 run data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".state_b.auto append from storage nw:tmp interation_to_add
data remove storage nw:tmp interation_to_add

## loop
execute if data storage nw:tmp interation_item_expand[0] run function nw:fur_addact/expand_loop