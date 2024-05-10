##check cooldown
#define score_holder #interaction_cd
scoreboard players operation #interaction_cd nw = @s fur_interaction_cd
execute if score #interaction_cd nw matches 1.. run tellraw @p[distance=..6,tag=fur_user] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 冷却中，剩余 ","color": "gray"},{"score":{"name": "#interaction_cd","objective": "nw"}},{"text": " 秒","color": "gray"}]
execute if score #interaction_cd nw matches 1.. run return -1

##reset cd
scoreboard players set @s fur_interaction_cd 0

##check state & clone
#define score_holder #fur_state
scoreboard players operation #fur_state nw = @s fur_state

data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_id int 1 run scoreboard players get @s fur_id

function nw:fur_use/clone_interaction with storage nw:tmp fur_info

##execute
execute if data storage nw:tmp interaction_list[0] as @p[distance=..6,tag=fur_user] run function nw:fur_use/checkeffect