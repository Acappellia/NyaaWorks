##change interaction size
execute if data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.009999
execute unless data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.02

##switch state & id
scoreboard players set @s fur_state 1
scoreboard players reset @s fur_id
scoreboard players reset @s fur_id_buildin
execute unless data storage nw:tmp interaction_list[0].buildin store result score @s fur_id run data get storage nw:tmp fur_state.fur_id
execute if data storage nw:tmp interaction_list[0].buildin store result score @s fur_id_buildin run data get storage nw:tmp fur_state.fur_id_buildin

##reset auto cd
execute store result score @s fur_auto_cd run data get storage nw:tmp fur_state.auto_cd 1

##check has auto
tag @s remove nw_auto
tag @s remove nw_action
execute if data storage nw:tmp fur_state.auto[0] run tag @s add nw_auto
execute if data storage nw:tmp fur_state.interaction[0] run tag @s add nw_action