
#define score_holder #tool_id
scoreboard players reset #tool_id nw
execute store result score #tool_id nw run data get storage nw:tmp check_tool_id[0].p_id

execute if score @s p_id = #tool_id nw run function nw:fur_remove/check_time
execute unless score @s p_id = @s p_id run scoreboard players set #tool_success nw 1

data remove storage nw:tmp check_tool_id[0]
execute unless score #tool_success nw matches 1 if data storage nw:tmp check_tool_id[0] run function nw:fur_remove/check_toolid_loop