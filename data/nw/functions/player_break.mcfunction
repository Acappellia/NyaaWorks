advancement revoke @s only nw:break

#define score_holder #current_time

##identifying the nw_fur point
execute store result score #current_time nw run time query gametime
execute as @e[distance=..5,type=interaction,tag=nw_fur] store result score @s fur_interaction_time run data get entity @s attack.timestamp
execute as @e[distance=..5,type=interaction,tag=nw_fur] if score @s fur_interaction_time = #current_time nw run tag @s add interact_target

##determine if the point exists
execute as @e[distance=..5,type=interaction,tag=interact_target,tag=nw_fur,limit=1] at @s positioned ~ ~0.1 ~ run function nw:fur_remove/remove
tag @e[distance=..5,type=interaction,tag=nw_fur] remove interact_target