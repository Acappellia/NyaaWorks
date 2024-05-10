#define score_holder #tool_id
scoreboard players reset #tool_id nw
execute store result score #tool_id nw run data get storage nw:tmp check_tool_id[0].p_id

execute if score @s p_id = #tool_id nw store result storage nw:tmp check_tool_id[0].sign_time long 1 run time query gametime
execute if score @s p_id = #tool_id nw run scoreboard players set #tool_dupe nw 1

data remove storage nw:tmp check_tool_id[0]
execute unless score #tool_dupe nw matches 1 if data storage nw:tmp check_tool_id[0] run function nw:fur_sign/check_toolid_loop