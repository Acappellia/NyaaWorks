##check if nw_friend_slate
#define score_holder #non_friends_destroy
scoreboard players reset #non_friends_destroy nw
execute if entity @s[tag=nw_friend_slate] if entity @p[tag=fur_destroyer,distance=..10,gamemode=!creative] store result score #non_friends_destroy nw run function nw:fur_friend/remove_friends
execute if score #non_friends_destroy nw matches -1 if entity @p[tag=fur_destroyer,distance=..10,gamemode=!creative] run return -1

execute if score @s fur_id = @s fur_id run function nw:fur_remove/remove
execute if score @s fur_id_buildin = @s fur_id_buildin run function nw:fur_remove/remove_buildin