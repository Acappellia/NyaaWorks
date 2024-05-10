#define score_holder #tool_id
scoreboard players reset #tool_id nw
execute store result score #tool_id nw run data get storage nw:tmp check_tool_id[0]

execute if score @s p_id = #tool_id nw run scoreboard players set #tool_dupe nw 1

execute unless score #tool_dupe nw matches 1 if data storage nw:tmp check_tool_id[0] run function nw:fur_sign/check_toolid_loop