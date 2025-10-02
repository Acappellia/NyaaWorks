advancement revoke @s only nw:update_recipe
advancement grant @s only nw:update_recipe
execute unless score #disable_noti nw matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已加入新的家具！","color": "yellow"}]
execute unless score #disable_noti nw matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{text:" 使用",color:"white"},{text:" 任意原木 ",color:"aqua"},{text:"+",color:"white"},{text:" 书 ",color:"aqua"},{text:"合成家具指南！",color:"white"}]
scoreboard players operation @s nw_version = #current_version nw_version