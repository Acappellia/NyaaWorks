##bypass creative
execute if entity @p[distance=..10,tag=fur_user,gamemode=creative] run scoreboard players set #transfer_check nw 1
execute if entity @p[distance=..10,tag=fur_user,gamemode=creative] run return 1

##check unbreakable
execute if entity @s[tag=nw_admin] run tellraw @p[distance=..10,tag=fur_user] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 此家具仅可由管理员更改","color": "gray"}]
execute if entity @s[tag=nw_admin] run return -1

##update team
execute as @p[distance=..10,tag=fur_user] run function nw:player_update_team

##check player id
execute if score @s p_team = @p[distance=..10,tag=fur_user] p_team run scoreboard players set #transfer_check nw 1
execute if score @s p_team = @p[distance=..10,tag=fur_user] p_team run return 1

execute store result storage nw:tmp sign.p_id int 1 run scoreboard players get @s p_id
function nw:fur_remove/destroyer_invalid with storage nw:tmp sign