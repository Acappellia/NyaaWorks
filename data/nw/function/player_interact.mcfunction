advancement revoke @s only nw:interact

##identifying the nw_fur point
#execute store result score #current_time nw run time query gametime
#execute as @e[distance=..5,type=interaction,tag=nw_fur] run function nw:calc/get_int_time
execute as @e[distance=..5,type=interaction,tag=nw_fur] if data entity @s interaction run tag @s add interact_target

function nw:player_interact_2

execute as @e[distance=..5,type=interaction,tag=nw_fur] run function nw:fur_use/remove_tag