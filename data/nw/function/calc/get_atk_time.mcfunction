execute store result score @s fur_interaction_time run data get entity @s attack.timestamp
execute unless score @s fur_interaction_time matches 2147483647 run return -1

execute store result score #calc_high nw run data get entity @s attack.timestamp 0.0001
data modify storage nw:tmp time_data.low set string entity @s attack.timestamp -5 -1
function nw:calc/set_time_low with storage nw:tmp time_data

scoreboard players operation #calc_high_res nw = #calc_high nw
scoreboard players operation #calc_high nw /= #214748 nw
scoreboard players operation #calc_high_res nw %= #214748 nw

scoreboard players operation #calc_high nw *= #-3648 nw
scoreboard players operation #calc_high_res nw *= #10000 nw

scoreboard players operation #calc_low nw += #calc_high_res nw
scoreboard players operation #calc_low nw -= #calc_high nw

execute if score #calc_low nw matches ..-1 run function nw:calc/add_int32
scoreboard players operation @s fur_interaction_time = #calc_low nw

scoreboard players operation @s fur_interaction_time += #server_time_offset nc

tellraw @p[distance=..5,gamemode=creative] [{"score": {"name": "#current_time","objective": "nw"}},"-",{"score": {"name": "@s","objective": "fur_interaction_time"}}]