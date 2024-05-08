scoreboard players set #fur_hand nw 2

item modify entity @s weapon.offhand nw:remove_1

data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.nw_fur_id set from storage nw:tmp offhand.components."minecraft:custom_data".nw_fur_id
data modify storage nw:tmp fur_info.nw_fur_orient set from storage nw:tmp offhand.components."minecraft:custom_data".nw_fur_orient
data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp offhand.components."minecraft:firework_explosion"