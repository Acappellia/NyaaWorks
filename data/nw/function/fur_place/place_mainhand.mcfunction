scoreboard players set #fur_hand nw 1

item modify entity @s[gamemode=!creative] weapon.mainhand nw:remove_1

data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.nw_fur_id set from storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_id
data modify storage nw:tmp fur_info.nw_fur_id_buildin set from storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur_id_buildin
data modify storage nw:tmp fur_info.nw_fur_color set from storage nw:tmp mainhand.components."minecraft:firework_explosion"