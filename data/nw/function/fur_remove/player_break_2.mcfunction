##check gamemode
#define score_holder #check_tool
scoreboard players set #check_tool nw 0
execute if entity @s[gamemode=!creative] run function nw:fur_remove/check_hand
execute unless score #disable_noti nw matches 1 if score #check_tool nw matches 1 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 请使用 木锄 取下家具","color": "gray"}]
execute if score #check_tool nw matches 1 run return -1

##determine if the point exists
tag @s add fur_destroyer
execute as @e[distance=..5,type=interaction,tag=interact_target,tag=nw_fur,limit=1] at @s positioned ~ ~0.1 ~ run function nw:fur_remove/check_destroyer
tag @s remove fur_destroyer
