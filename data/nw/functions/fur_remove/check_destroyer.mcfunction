##check unbreakable
execute if entity @s[tag=nw_admin] unless entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run tellraw @p[distance=..10,tag=fur_destroyer] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 此家具仅可由管理员取下","color": "gray"}]
execute if entity @s[tag=nw_admin] unless entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run return -1

##check tool id
#define score_holder #tool_id
scoreboard players reset #tool_id nw
execute if data storage nw:tmp tool.components."minecraft:custom_data".nw_tool_id store result score #tool_id nw run data get storage nw:tmp tool.components."minecraft:custom_data".nw_tool_id

execute store result storage nw:tmp sign.p_id int 1 run scoreboard players get @s p_id

execute unless score @s p_id = @p[distance=..10,tag=fur_destroyer] p_id unless score @s p_id = #tool_id nw unless entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run function nw:fur_remove/destroyer_invalid with storage nw:tmp sign
execute unless score @s p_id = @p[distance=..10,tag=fur_destroyer] p_id unless score @s p_id = #tool_id nw unless entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run return -1

function nw:fur_remove/remove