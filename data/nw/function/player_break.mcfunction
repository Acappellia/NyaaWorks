advancement revoke @s only nw:break

##check gamemode
#define score_holder #check_tool
scoreboard players set #check_tool nw 0
execute if entity @s[gamemode=!creative] run function nw:fur_remove/check_hand
execute if score #check_tool nw matches 1 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 请使用 木锄 取下家具","color": "gray"}]
execute if score #check_tool nw matches 1 run return -1

##identifying the nw_fur point
#define score_holder #current_time
execute store result score #current_time nw run time query gametime
execute as @e[distance=..5,type=interaction,tag=nw_fur] store result score @s fur_interaction_time run data get entity @s attack.timestamp
execute as @e[distance=..5,type=interaction,tag=nw_fur] if score @s fur_interaction_time = #current_time nw run tag @s add interact_target

##determine if the point exists
tag @s add fur_destroyer
execute as @e[distance=..5,type=interaction,tag=interact_target,tag=nw_fur,limit=1] at @s positioned ~ ~0.1 ~ run function nw:fur_remove/check_destroyer_maimai
tag @s remove fur_destroyer
tag @e[distance=..5,type=interaction,tag=nw_fur] remove interact_target