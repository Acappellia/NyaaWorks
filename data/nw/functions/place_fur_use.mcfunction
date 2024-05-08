advancement revoke @s only nw:place_use

execute unless score @s nw_place_cd matches 0.. run return -1

##copy data
data remove storage nw:tmp mainhand
data remove storage nw:tmp offhand

data modify storage nw:tmp mainhand set from entity @s SelectedItem
data modify storage nw:tmp offhand set from entity @s Inventory[{Slot:-106b}]

#execute unless data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur unless data storage nw:tmp offhand.components."minecraft:custom_data".nw_fur run return -1

execute anchored eyes positioned ^ ^ ^1 run function nw:fur_place/ray

scoreboard players set @s nw_place_cd -4