##check if nw_friend_tome
execute if entity @s[tag=nw_friend_tome] if entity @p[tag=fur_destroyer,distance=..10,gamemode=!creative] run function nw:fur_friend/remove_friends

execute if score @s fur_id = @s fur_id run function nw:fur_remove/remove
execute if score @s fur_id_buildin = @s fur_id_buildin run function nw:fur_remove/remove_buildin