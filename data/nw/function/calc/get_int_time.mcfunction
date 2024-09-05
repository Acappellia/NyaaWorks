execute store result score @s fur_interaction_time run data get entity @s interaction.timestamp
execute unless score @s fur_interaction_time matches 2147483647 run return -1

execute store result score #calc_high nw run data get entity @s interaction.timestamp 0.0001
data modify storage nw:tmp time_data.low set string entity @s interaction.timestamp -5 -1
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