##check destroyer
scoreboard players operation #self_id nw = @p[distance=..10,tag=fur_destroyer] p_id
execute unless score @s p_id = #self_id nw unless score @s fur_friend_id = #self_id nw run return -1

data remove storage nw:tmp p_info
execute if score @s p_id = #self_id nw store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s fur_friend_id
execute if score @s fur_friend_id = #self_id nw store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s p_id
execute store result storage nw:tmp p_info.self_id int 1 run scoreboard players get #self_id nw

execute as @p[distance=..10,tag=fur_destroyer] run function nw:fur_friend/remove_from_data with storage nw:tmp p_info