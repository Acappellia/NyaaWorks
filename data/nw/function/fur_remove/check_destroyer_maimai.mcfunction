##bypass creative
execute if entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run function nw:fur_remove/remove_checktype
execute if entity @p[distance=..10,tag=fur_destroyer,gamemode=creative] run return 1

##check unbreakable
execute if entity @s[tag=nw_admin] run tellraw @p[distance=..10,tag=fur_destroyer] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 此家具仅可由管理员取下","color": "gray"}]
execute if entity @s[tag=nw_admin] run return -1

##update team
execute as @p[distance=..10,tag=fur_destroyer] run function nw:player_update_team

##check player id
execute if score @s p_team = @p[distance=..10,tag=fur_destroyer] p_team run function nw:fur_remove/remove_checktype
execute unless score @s p_team = @s p_team run return 1

tellraw @p[distance=..10,tag=fur_destroyer] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 不可以乱动动别人家的东西…… ","color": "gray"}]