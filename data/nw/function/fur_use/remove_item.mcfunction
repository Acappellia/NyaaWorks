##clear storage
data remove storage nw:tmp check_exact_item

## check empty requirements
execute unless data storage nw:tmp interaction_list[0].item.id run return -1

## check item id
execute unless data storage nw:tmp mainhand.id run return run scoreboard players set #effect_return nw 1
data modify storage nw:tmp check_exact_item.id set from storage nw:tmp mainhand.id
execute store success score #check_exact_item nw run data modify storage nw:tmp check_exact_item.id set from storage nw:tmp interaction_list[0].item.id
execute if score #check_exact_item nw matches 1 run return run scoreboard players set #effect_return nw 1

##check item components
execute unless data storage nw:tmp interaction_list[0].item.components if data storage nw:tmp mainhand.components run return run scoreboard players set #effect_return nw 1
data modify storage nw:tmp check_exact_item.components set from storage nw:tmp mainhand.components
execute store success score #check_exact_item nw run data modify storage nw:tmp check_exact_item.components set from storage nw:tmp interaction_list[0].item.components
execute if score #check_exact_item nw matches 1 run return run scoreboard players set #effect_return nw 1

item modify entity @s weapon.mainhand nw:remove_1