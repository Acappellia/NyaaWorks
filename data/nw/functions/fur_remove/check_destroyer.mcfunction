##bypass creative
execute if entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run function nw:fur_remove/remove
execute if entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run return 1

##check unbreakable
execute if entity @s[tag=nw_admin] run tellraw @p[distance=..10,tag=fur_destroyer] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 此家具仅可由管理员取下","color": "gray"}]
execute if entity @s[tag=nw_admin] run return -1

##check player id
execute if score @s p_id = @p[distance=..10,tag=fur_destroyer] p_id run function nw:fur_remove/remove
execute if score @s p_id = @p[distance=..10,tag=fur_destroyer] p_id run return 1

##check tool id
#define score_holder #tool_success
scoreboard players reset #tool_success nw
data remove storage nw:tmp check_tool_id
data modify storage nw:tmp check_tool_id set from storage nw:tmp tool.components."minecraft:custom_data".nw_tool_id
execute if data storage nw:tmp check_tool_id[0] run function nw:fur_remove/check_toolid_loop

execute if score #tool_success nw matches 1 run return 1

execute store result storage nw:tmp sign.p_id int 1 run scoreboard players get @s p_id
function nw:fur_remove/destroyer_invalid with storage nw:tmp sign