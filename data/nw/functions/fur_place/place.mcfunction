##effects
playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 2
particle flash ~ ~0.5 ~
particle witch ~ ~0.1 ~ 0 0 0 0.05 20
#tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已放置家具","color": "yellow"}]

data remove storage nw:tmp fur_info
data modify storage nw:tmp fur_info.nw_fur_id set from block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".nw_fur_id
data modify storage nw:tmp fur_info.nw_fur_color set from block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".nw_fur_color

##summon item_display & interaction
#define score_holder #player_rotation
execute store result score #player_rotation nw run data get entity @s Rotation[0] 1

execute summon item_display run function nw:fur_place/summon_display with storage nw:tmp fur_info
execute positioned ~ ~-0.01 ~ summon interaction run function nw:fur_place/summon_interaction

##replace block
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.block run function nw:fur_place/setblock with storage nw:tmp fur_comp."minecraft:custom_data".state_a
execute unless data storage nw:tmp fur_comp."minecraft:custom_data".state_a.block run function nw:fur_place/setblock_air
