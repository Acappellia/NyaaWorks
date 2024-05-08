##check validity
#define score_holder #place_inwater
scoreboard players reset #place_inwater
execute if block ~ ~ ~ #nw:air_blocks_replace run scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:waterloggable_blocks_replace[waterlogged=false] run scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:water_blocks_replace run scoreboard players set #place_inwater nw 1
execute if block ~ ~ ~ #nw:waterloggable_blocks_replace[waterlogged=true] run scoreboard players set #place_inwater nw 1

execute unless score #place_inwater nw matches 0..1 run return -1
execute if entity @e[distance=..0.1,type=interaction,tag=nw_fur] run return -1

##check hands
#define score_holder #fur_hand
scoreboard players reset #fur_hand
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_fur run function nw:fur_place/place_mainhand
execute unless score #fur_hand nw matches 1 if data storage nw:tmp offhand.components."minecraft:custom_data".nw_fur run function nw:fur_place/place_offhand

execute unless score #fur_hand nw matches 1..2 run return -1

##effects
playsound block.wood.place block @a ~ ~ ~
#playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 2
#particle flash ~ ~0.5 ~
#particle witch ~ ~0.1 ~ 0 0 0 0.05 20
#tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已放置家具","color": "yellow"}]

##summon item_display & interaction
#define score_holder #player_rotation
execute store result score #player_rotation nw run data get entity @s Rotation[0] 1

execute summon item_display run function nw:fur_place/summon_display with storage nw:tmp fur_info
tag @s add fur_placer
execute positioned ~ ~-0.01 ~ summon interaction run function nw:fur_place/summon_interaction
tag @s remove fur_placer

##replace block
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.block run function nw:fur_place/setblock with storage nw:tmp fur_comp."minecraft:custom_data".state_a
execute unless data storage nw:tmp fur_comp."minecraft:custom_data".state_a.block run function nw:fur_place/setblock_air
