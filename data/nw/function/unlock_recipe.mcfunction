advancement revoke @s only nw:unlock_recipe
advancement grant @s only nw:unlock_recipe
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已加入新的家具！打开配方书查看","color": "yellow"}]
scoreboard players operation @s nw_version = #current_version nw_version