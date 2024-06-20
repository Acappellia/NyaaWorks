##change interaction size
execute if data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.009999
execute unless data storage nw:tmp fur_state.istable run data modify entity @s height set value 1.02

##switch state
execute if score #fur_state nw matches 1 run scoreboard players set @s fur_state 2
execute if score #fur_state nw matches 2 run scoreboard players set @s fur_state 1

##reset auto cd
execute store result score @s fur_auto_cd run data get storage nw:tmp fur_state.auto_cd 1

##check has auto
tag @s remove nw_auto
tag @s remove nw_action
execute if data storage nw:tmp fur_state.auto[0] run tag @s add nw_auto
execute if data storage nw:tmp fur_state.interaction[0] run tag @s add nw_action
