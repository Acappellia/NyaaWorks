execute if entity @p[distance=..10,tag=fur_user,gamemode=creative] run return 2

execute if score @s p_id = @p[distance=..10,tag=fur_user] p_id run return 2

##check friends
#define score_holder #friends_success
data remove storage nw:tmp p_info
execute store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s p_id
execute store result storage nw:tmp p_info.self_id int 1 run scoreboard players get @p[distance=..10,tag=fur_user] p_id
scoreboard players reset #friends_success nw
execute store result score #friends_success nw run function nw:fur_remove/check_friends with storage nw:tmp p_info
execute if score #friends_success nw matches 2 run return 2