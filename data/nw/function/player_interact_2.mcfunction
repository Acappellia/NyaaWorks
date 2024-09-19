execute if score @s nw_player_cd matches ..-1 run return -1

##check tool
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_tool run return run function nw:fur_edit/check_tool

##check sneak
execute if predicate nw:is_sneaking if entity @s[gamemode=!adventure] run return run function nw:block_place/check_hand

##determine if the point exists
tag @s add fur_user
execute as @e[distance=..5,type=interaction,tag=interact_target,tag=nw_fur,limit=1] at @s positioned ~ ~0.1 ~ run function nw:fur_use/use
tag @s remove fur_user

##add interact cd
scoreboard players set @s nw_player_cd -4