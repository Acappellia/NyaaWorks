##check cooldown
#define score_holder #interaction_cd
scoreboard players operation #interaction_cd nw = @e[distance=..5,type=interaction,tag=interact_target,limit=1] fur_interaction_cd
execute if score #interaction_cd nw matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 冷却中，剩余 ","color": "gray"},{"score":{"name": "#interaction_cd","objective": "nw"}},{"text": " 秒","color": "gray"}]
execute if score #interaction_cd nw matches 1.. run return -1

##reset cd
scoreboard players set @e[distance=..5,type=interaction,tag=interact_target,limit=1] fur_interaction_cd 0

##check state & clone
#define score_holder #fur_state
scoreboard players operation #fur_state nw = @e[distance=..5,type=interaction,tag=interact_target,limit=1] fur_state

data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_id int 1 run scoreboard players get @e[distance=..5,type=interaction,tag=interact_target,limit=1] fur_id

function nw:fur_use/clone_interaction with storage nw:tmp fur_info

##execute
execute if data storage nw:tmp interaction_list[0] run function nw:fur_use/checkeffect