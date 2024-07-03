data remove storage nw:tmp p_info
execute store result storage nw:tmp p_info.self_id int 1 run scoreboard players get @p[distance=..10,tag=fur_destroyer] p_id
execute if score @s p_id = @p[distance=..10,tag=fur_destroyer] p_id store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s fur_friend_id
execute if score @s fur_friend_id = @p[distance=..10,tag=fur_destroyer] p_id store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s p_id
execute as @p[distance=..10,tag=fur_destroyer] run function nw:fur_friend/remove_from_data with storage nw:tmp p_info