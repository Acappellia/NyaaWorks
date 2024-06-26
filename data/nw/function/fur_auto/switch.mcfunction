##get state data
execute if data storage nw:tmp fur_info.nw_fur_id run function nw:fur_use/clone_state with storage nw:tmp fur_info
execute if data storage nw:tmp fur_info.nw_fur_id_buildin run function nw:fur_use/clone_state_buildin with storage nw:tmp fur_info


##change cmd
data modify entity @n[type=item_display,tag=nw_display,distance=..0.5] item.id set from storage nw:tmp fur_state.item_id
data remove entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:custom_model_data"
data modify entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:custom_model_data" set from storage nw:tmp fur_state.model

##change interaction size
execute if data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.009999
execute unless data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.02

##switch state
execute if score #fur_state nw matches 1 run scoreboard players set @s fur_state 2
execute if score #fur_state nw matches 2 run scoreboard players set @s fur_state 1

##reset auto cd
execute store result score @s fur_auto_cd run data get storage nw:tmp fur_state.auto_cd 1

##check has auto
tag @s remove nw_auto
tag @s remove nw_action
execute if data storage nw:tmp fur_state.auto[0] run tag @s add nw_auto
execute if data storage nw:tmp fur_state.interaction[0] run tag @s add nw_action

##change block
scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:waterloggable[waterlogged=true] run scoreboard players set #place_inwater nw 1

execute if data storage nw:tmp fur_state.block run function nw:fur_place/setblock with storage nw:tmp fur_state
execute unless data storage nw:tmp fur_state.block run function nw:fur_place/setblock_air