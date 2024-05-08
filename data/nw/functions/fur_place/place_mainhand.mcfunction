scoreboard players set #fur_hand nw 1

item modify entity @s weapon.mainhand nw:remove_1

data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.nw_fur_id set from storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_id
data modify storage nw:tmp fur_info.nw_fur_orient set from storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_orient
data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp mainhand.components."minecraft:firework_explosion"