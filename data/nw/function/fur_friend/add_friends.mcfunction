#define score_holder #friend_id
scoreboard players operation #friend_id nw = @p[distance=..10,tag=fur_user] p_id

##check if self
execute if score @s p_id = #friend_id nw run return run execute unless score #disable_noti nw matches 1.. run tellraw @p[distance=..10,tag=fur_user] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "无法与自己添加好友。如需添加好友请拆除家具后重新摆放。","color": "gray"}]

##add friends
tag @s add nw_friend_slate
data remove storage nw:tmp p_info
execute store result storage nw:tmp p_info.target_id int 1 run scoreboard players get @s p_id
scoreboard players operation @s fur_friend_id = #friend_id nw
execute store result storage nw:tmp p_info.self_id int 1 run scoreboard players get @s fur_friend_id
execute as @p[distance=..10,tag=fur_user] run function nw:fur_friend/add_to_data with storage nw:tmp p_info

##effect
particle happy_villager ~ ~0.5 ~ 0.6 0.6 0.6 0 20
playsound entity.player.levelup block @a ~ ~ ~ 1 1.2