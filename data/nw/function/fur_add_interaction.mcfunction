##check item type
data modify storage nw:tmp check_id set value ["minecraft:glow_ink_sac","minecraft:note_block","minecraft:oak_sign","minecraft:potion","minecraft:arrow","minecraft:bundle","minecraft:cactus","minecraft:compass","minecraft:command_block","minecraft:clock","minecraft:bell","minecraft:oak_button","minecraft:oak_slab","minecraft:oak_planks","minecraft:item_frame","minecraft:glow_item_frame","minecraft:ink_sac"]
execute store success score #check_success nw run data modify storage nw:tmp check_id[0] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/particle
execute store success score #check_success nw run data modify storage nw:tmp check_id[1] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/sound
execute store success score #check_success nw run data modify storage nw:tmp check_id[2] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/tellraw
execute store success score #check_success nw run data modify storage nw:tmp check_id[3] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/effect
execute store success score #check_success nw run data modify storage nw:tmp check_id[4] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/damage
execute store success score #check_success nw run data modify storage nw:tmp check_id[5] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/give
execute store success score #check_success nw run data modify storage nw:tmp check_id[6] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/clear
execute store success score #check_success nw run data modify storage nw:tmp check_id[7] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/tp
execute store success score #check_success nw run data modify storage nw:tmp check_id[8] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/command
execute store success score #check_success nw run data modify storage nw:tmp check_id[9] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/cooldown
execute store success score #check_success nw run data modify storage nw:tmp check_id[10] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/cooldown_long
execute store success score #check_success nw run data modify storage nw:tmp check_id[11] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/switch
execute store success score #check_success nw run data modify storage nw:tmp check_id[12] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/sit_half
execute store success score #check_success nw run data modify storage nw:tmp check_id[13] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/sit_full
execute store success score #check_success nw run data modify storage nw:tmp check_id[14] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/rotate_c
execute store success score #check_success nw run data modify storage nw:tmp check_id[15] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/rotate_cc
execute store success score #check_success nw run data modify storage nw:tmp check_id[16] set from storage nw:tmp interation_item.id
execute unless score #check_success nw matches 1 run function nw:fur_addact/particle_precise