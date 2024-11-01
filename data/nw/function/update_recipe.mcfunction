advancement revoke @s only nw:update_recipe
advancement grant @s only nw:update_recipe
execute unless score #disable_noti nw matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已加入新的家具！打开配方书查看","color": "yellow"}]
scoreboard players operation @s nw_version = #current_version nw_version