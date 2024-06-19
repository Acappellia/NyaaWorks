##add data
data modify storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id append value {}
execute store result storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id[-1].p_id int 1 run scoreboard players get @s p_id
execute store result storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool_id[-1].sign_time long 1 run time query gametime