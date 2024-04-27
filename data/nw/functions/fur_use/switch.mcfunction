##get state data
function nw:fur_use/clone_state with storage nw:tmp fur_info

##change cmd
data modify entity @e[type=item_display,tag=nw_display,distance=..0.5,sort=nearest,limit=1] item.id set from storage nw:tmp fur_state.item_id
data modify entity @e[type=item_display,tag=nw_display,distance=..0.5,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set from storage nw:tmp fur_state.model

##intearaction
execute as @e[distance=..5,type=interaction,tag=interact_target,limit=1] run function nw:fur_use/switch_interaction

##change block
scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:waterloggable[waterlogged=true] run scoreboard players set #place_inwater nw 1

execute if data storage nw:tmp fur_state.block run function nw:fur_place/setblock with storage nw:tmp fur_state
execute unless data storage nw:tmp fur_state.block run function nw:fur_place/setblock_air