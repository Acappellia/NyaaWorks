execute as @e[type=interaction,tag=nw_auto] if score @s fur_auto_cd matches ..0 at @s positioned ~ ~0.1 ~ run function nw:fur_auto/auto
execute as @e[type=interaction,tag=nw_auto] run scoreboard players remove @s fur_auto_cd 1
execute as @e[type=interaction,tag=nw_fur] run scoreboard players remove @s fur_interaction_cd 1

execute unless score #disable_noti nw matches 1.. as @a unless score @s nw_version = #current_version nw_version run function nw:unlock_recipe

schedule function nw:slowtick 20t replace