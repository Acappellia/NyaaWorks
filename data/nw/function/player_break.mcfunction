advancement revoke @s only nw:break

##identifying the nw_fur point
#define score_holder #current_time
#execute store result score #current_time nw run time query gametime
#execute as @e[distance=..5,type=interaction,tag=nw_fur] run function nw:calc/get_atk_time
execute as @e[distance=..5,type=interaction,tag=nw_fur] if data entity @s attack run tag @s add interact_target

function nw:player_break_2

execute as @e[distance=..5,type=interaction,tag=nw_fur] run function nw:fur_remove/remove_tag