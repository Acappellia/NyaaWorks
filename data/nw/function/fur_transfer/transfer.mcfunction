##check tool
scoreboard players set #check_tool nw 0
execute as @p[distance=..10,tag=fur_user] run function nw:fur_remove/check_hand
execute if score #check_tool nw matches 1 run return -1

##check player
#define score_holder #transfer_check
scoreboard players reset #transfer_check nw
function nw:fur_transfer/transfer_checkuser_mmz
execute unless score #transfer_check nw matches 1 run return -1

##get state data
data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_transfer_target int 1 run scoreboard players get @s fur_transfer_target
function nw:fur_transfer/clone_transfer_target with storage nw:tmp fur_info
execute unless data storage nw:tmp fur_state.item_id run return -1

##change cmd
data modify entity @n[type=item_display,tag=nw_display,distance=..0.5] item.id set from storage nw:tmp fur_state.item_id
data remove entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:custom_model_data"
data modify entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:custom_model_data" set from storage nw:tmp fur_state.model

##change interaction size
execute if data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.009999
execute unless data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.02

##switch state & id
scoreboard players set @s fur_state 1
scoreboard players operation @s fur_id = @s fur_transfer_target
scoreboard players reset @s fur_id_buildin
scoreboard players reset @s fur_transfer_target
scoreboard players reset @s fur_transfer_target_buildin

execute if data storage nw:tmp fur_state.target.nw_fur_transfer_target run function nw:fur_place/set_transfer_target with storage nw:tmp fur_state.target
execute if data storage nw:tmp fur_state.target.nw_fur_transfer_target_buildin run function nw:fur_place/set_transfer_target_buildin with storage nw:tmp fur_state.target

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

##effect
playsound minecraft:entity.item_frame.place block @a ~ ~ ~ 1 0.8

##success
scoreboard players set #transfer_success nw 1